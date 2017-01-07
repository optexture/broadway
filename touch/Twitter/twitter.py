print('twitter.py initializing')

try:
	import common_base as base
except ImportError:
	import common.lib.base as base

import sys, requests, queue, json, datetime, time, threading
from requests_oauthlib import OAuth1

if False:
	# trick pycharm...
	project = object()
	project.folder = ''
	licences = object()
	licences.systemCode = ''

class TwitterConnector(base.Extension):
	def __init__(self, comp):
		super().__init__(comp)
		self._oauthtoken = None
		self._oauthsecret = None
		self._appkey = None
		self._appsecret = None
		self._streamterms = None
		self._searchterms = None
		self._searchcount = None
		self._chunksize = None
		self._locations = None
		self._headers = ['tweetText', 'tweetLanguage', 'tweetTimestamp', 'tweetLocation', 'tweetHashtags', 'userFullName', 'userScreenName', 'userLocation', 'userLanguage', 'userProfileImage']
		self._StreamInQueue = None
		self._StreamOutQueue = None
		self._SearchInQueue = None

	def _LoadParams(self):
		self._oauthtoken = self.comp.par.OAUTH_KEY.eval()
		self._oauthsecret = self.comp.par.OAUTH_SECRET.eval()
		self._appkey = self.comp.par.CONSUMER_KEY.eval()
		self._appsecret = self.comp.par.CONSUMER_SECRET.eval()
		self._streamterms = self.comp.par.STREAM_TERMS.eval().replace(' ', '%20').replace(',', '%2C')
		self._searchterms = self.comp.par.SEARCH_TERMS.eval()
		self._chunksize = 512 if self.comp.par.Chunk else 1
		self._searchcount = self.comp.par.TWEETS_PER_SEARCH.eval()
		self._locations = self.comp.par.Tweetlocations.eval()

	@property
	def _StreamActive(self):
		return self.comp.par.Streamactive

	@_StreamActive.setter
	def _StreamActive(self, val):
		self.comp.par.Streamactive = val
		self._CheckStreamCallbacks.cook(force=True)

	@property
	def _CheckStreamCallbacks(self):
		return self.comp.op('./checkForStream')

	@property
	def _SearchActive(self):
		return self.comp.par.Searchactive

	@_SearchActive.setter
	def _SearchActive(self, val):
		self.comp.par.Searchactive = val
		self._CheckSearchCallbacks.cook(force=True)

	@property
	def _CheckSearchCallbacks(self):
		return self.comp.op('./checkForSearch')

	def StartStream(self):
		self._LogBegin('StartStream()')
		try:
			if not self._StreamActive:
				self._WriteToLog("DEBUG", 'pulsed. now starting stream..')
				self._WriteToConsole('starting stream')
				self._LoadParams()

				# create header and auth
				client_args = {}
				auth = OAuth1(self._appkey, self._appsecret, self._oauthtoken, self._oauthsecret)
				default_headers = {'User-Agent': 'TouchDesigner Twitter Plugin Powered by nVoid'}
				client_args['headers'] = default_headers
				client_args['timeout'] = 300

				if self._locations:
					client_args['locations'] = self._locations

				# setup i/o queues
				myInQ = queue.Queue()
				myOutQ = queue.Queue()
				self._StreamInQueue = myInQ
				self._StreamOutQueue = myOutQ

				# function to be launched in another thread
				def pythonStream(inQ, outQ):
					try:
						client = requests.Session()
						client.auth = auth
						client.stream = True

						r = client.post('https://stream.twitter.com/1.1/statuses/filter.json?track=' + self._searchterms,
						                client_args)

						for line in r.iter_lines(chunk_size=self._chunksize):
							try:
								value = inQ.get_nowait()
								if value == 'STOP':
									print('stopping stream')
									break
							except:
								pass
							if line:
								outQ.put(line.decode('utf-8'))
					except:
						pass

				# start new stream thread
				self._WriteToLog("DEBUG", 'starting stream thread')
				myThread = threading.Thread(target=pythonStream, args=(myOutQ, myInQ,))
				myThread.start()
				self._StreamActive = True
			else:
				self._WriteToLog("DEBUG", 'stream already active..')
				self._WriteToConsole("Stream already active, try stopping existing stream.")
		finally:
			self._LogEnd()

	def StopStream(self):
		self._LogBegin('StopStream()')
		try:
			if not self._StreamOutQueue:
				self._WriteToLog("DEBUG", 'pulsed. stream already stopped.')
				self._WriteToConsole('stream already stopped')
			else:
				self._WriteToLog("DEBUG", 'pulsed. now stopping stream.')
				self._WriteToConsole('stopping stream')
				self._StreamOutQueue.put('STOP')
				# self._StreamOutQueue = None # ... TODO: figure out if this would cause a memory leak
			self._StreamActive = False
		finally:
			self._LogEnd()

	def Stream_OnFrameStart(self):
		# self._LogBegin('Stream_OnFrameStart()')
		try:
			# check queue for tweet
			inQ = self._StreamInQueue
			value = inQ.get_nowait()

			# prep json
			json_obj = json.loads(value)

			# extract information from json
			tweetText = json_obj['text']
			tweetLanguage = json_obj['lang']
			tweetTimestamp = json_obj['timestamp_ms']
			tweetLocation = json_obj['coordinates']
			tweetHashtags = []
			for i in json_obj['entities']['hashtags']:
				tweetHashtags.append(i['text'])
			userFullName = json_obj['user']['name']
			userScreenName = json_obj['user']['screen_name']
			userLocation = json_obj['user']['location']
			userLanguage = json_obj['user']['lang']
			userProfileImage = json_obj['user']['profile_image_url']

			# check tweet for double quotes, and replace with single
			if '"' in tweetText:
				tweetText = tweetText.replace('"', "'")

			# write to table
			outdat = self.StreamOutputTable
			if outdat.numRows < 1:
				outdat.appendRow(self._headers)
			elif outdat[0, 0] != 'tweetText':
				outdat.insertRow(self._headers, 0)
			outdat.appendRow(
				[tweetText, tweetLanguage, tweetTimestamp, tweetLocation, tweetHashtags, userFullName, userScreenName,
				 userLocation, userLanguage, userProfileImage])

			# write to console
			self._WriteToConsole('New Tweet in stream from @' + userScreenName)

			# make tweet dict
			twitterDict = {}
			twitterDict["tweetText"] = tweetText
			twitterDict["tweetLanguage"] = tweetLanguage
			twitterDict["tweetTimeStamp"] = tweetTimestamp
			twitterDict["tweetLocation"] = tweetLocation
			twitterDict["tweetHashtags"] = tweetHashtags
			twitterDict["userFullName"] = userFullName
			twitterDict["userScreenName"] = userScreenName
			twitterDict["userLocation"] = userLocation
			twitterDict["userLanguage"] = userLanguage
			twitterDict["userProfileImage"] = userProfileImage

			# write to log
			self._WriteToLog("DEBUG", twitterDict)

		except Exception as e:
			# nothing new yet
			pass
		finally:
			# self._LogEnd()
			pass

	@property
	def StreamOutputTable(self):
		return self.comp.par.Streamoutput.eval() or self.comp.op('./default_stream_table')

	@property
	def SearchOutputTable(self):
		return self.comp.par.Searchoutput.eval() or self.comp.op('./default_search_table')

	def ClearStreamResults(self):
		self._ClearResultsTable(self.StreamOutputTable)

	def ClearSearchResults(self):
		self._ClearResultsTable(self.SearchOutputTable)

	def _ClearResultsTable(self, outdat):
		outdat.insertRow(self._headers)
		outdat.setSize(1, len(self._headers))

	def StartSearch(self):
		self._LogBegin('StartSearch()')
		try:
			self._WriteToLog("DEBUG", "pulsed. now starting search..")
			self._LoadParams()

			# setup queue
			myInQ = queue.Queue()
			self._SearchInQueue = myInQ

			# create requests header
			client_args = {}
			auth = OAuth1(self._appkey, self._appsecret, self._oauthtoken, self._oauthsecret)
			default_headers = {'User-Agent': 'TouchDesigner Twitter Plugin Powered by nVoid'}
			client_args['headers'] = default_headers
			client_args['timeout'] = 300

			# write to console
			self._WriteToLog("DEBUG", 'searching twitter for keywords and hashtags..')
			self._WriteToConsole("Searching Twitter for keywords and hashtags: " + self._searchterms)

			# function to perform python search in another thread
			def pythonSearch(outQ):
				client = requests.Session()
				client.auth = auth

				r = client.get(
					'https://api.twitter.com/1.1/search/tweets.json?q=%s&count=%d' %(self._searchterms, self._searchcount))
				outQ.put(r.text)

			# start new thread to search
			self._WriteToLog("DEBUG", 'creating thread')
			myThread = threading.Thread(target=pythonSearch, args=(myInQ,))
			myThread.start()
			self._SearchActive = True
		finally:
			self._LogEnd()

	def Search_OnFrameStart(self):
		try:
			# get tweet from queue
			inQ = self._SearchInQueue
			value = inQ.get_nowait()
			# prep json
			json_obj = json.loads(value)

			# parse tweet data from json
			for i in json_obj['statuses']:
				tweetText = i['text']
				tweetLanguage = i['lang']
				tweetTimestamp = i['created_at']
				tweetLocation = i['coordinates']
				tweetHashtags = []
				for j in i['entities']['hashtags']:
					tweetHashtags.append(j['text'])
				userFullName = i['user']['name']
				userScreenName = i['user']['screen_name']
				userLocation = i['user']['location']
				userLanguage = i['user']['lang']
				userProfileImage = i['user']['profile_image_url']

				# check tweet for double quotes, and replace with single
				if '"' in tweetText:
					tweetText = tweetText.replace('"', "'")

				# write to table
				self.ClearSearchResults()
				outdat = self.SearchOutputTable
				if outdat.numRows < 1:
					outdat.appendRow(self._headers)
				elif outdat[0, 0] != 'tweetText':
					outdat.insertRow(self._headers, 0)
				outdat.appendRow(
					[tweetText, tweetLanguage, tweetTimestamp, tweetLocation, tweetHashtags, userFullName,
					 userScreenName, userLocation, userLanguage, userProfileImage])

				# creating twitter dict
				twitterDict = {}
				twitterDict["tweetText"] = tweetText
				twitterDict["tweetLanguage"] = tweetLanguage
				twitterDict["tweetTimeStamp"] = tweetTimestamp
				twitterDict["tweetLocation"] = tweetLocation
				twitterDict["tweetHashtags"] = tweetHashtags
				twitterDict["userFullName"] = userFullName
				twitterDict["userScreenName"] = userScreenName
				twitterDict["userLocation"] = userLocation
				twitterDict["userLanguage"] = userLanguage
				twitterDict["userProfileImage"] = userProfileImage

				# write to log
				self._WriteToLog("DEBUG", twitterDict)

				self._SearchActive = False

		except Exception as e:
			# nothing new yet
			pass

	@property
	def _LogFifo(self):
		return self.comp.op('./log_fifo')

	def OnStart(self):
		self._LogFifo.par.clear.pulse()

		mypath = project.folder + '/Twitter/pylib/'
		if mypath not in sys.path:
			sys.path.append(mypath)

		self._StreamActive = False
		self._SearchActive = False

	def OnCreate(self):
		self._LogFifo.par.clear.pulse()

		mypath = project.folder + '/Twitter/pylib/'
		if mypath not in sys.path:
			sys.path.append(mypath)

		self._StreamActive = False
		self._SearchActive = False

	@staticmethod
	def _WriteToLog(logtype, message):
		# get file + folder ready
		folderPath = str(project.folder + '/Twitter/LOGS/')
		localDate = time.localtime()
		fileDate = str(time.asctime(localDate))[4:-14] + ' ' + str(time.asctime(localDate))[-4:]
		fileDate = fileDate.replace(' ', '_')
		filePath = folderPath + fileDate + '.log'

		# prep json
		json_obj = {}
		json_obj['logTime'] = time.asctime(localDate)
		json_obj['logType'] = logtype
		json_obj['data'] = message

		prepped_json = json.dumps(json_obj)
		logString = prepped_json + '\n'

		# write it
		with open(filePath, 'a') as f:
			f.write(logString)
		f.close()

	def _WriteToConsole(self, message):
		timestamp = datetime.datetime.now().strftime("%d %B %Y %I:%M%p")
		self._LogFifo.appendRow([timestamp + ' - ' + message])

	@staticmethod
	def __UNUSED_support(msg='CRITICAL ERROR'):
		import smtplib

		TO = "TO ADDRESS HERE"
		SUBJECT = " PROBLEM : CRITICAL "
		TEXT = msg + " - System ID is: " + str(licences.systemCode)
		# msg is an argument that defaults to critical error and
		# sends you the system code of the machine which you can
		# log to keep track of where your machines are

		gmail_sender = 'GMAIL FROM ADDRESS HERE'
		gmail_password = 'GMAIL PASSWROD FOR ACCOUNT HERE'

		server = smtplib.SMTP('smtp.gmail.com', 587)
		server.ehlo()
		server.starttls()
		server.login(gmail_sender, gmail_password)

		BODY = '\r\n'.join(['To: %s' % TO, 'From: %s' % gmail_sender, 'Subject: %s' % SUBJECT, '', TEXT])

		try:
			server.sendmail(gmail_sender, [TO], BODY)
		except:
			pass

		server.quit()
