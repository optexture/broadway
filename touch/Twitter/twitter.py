print('twitter.py initializing')

try:
	import common_base as base
except ImportError:
	import common.lib.base as base

import requests, queue, json, time, threading
from requests_oauthlib import OAuth1

if False:
	# trick pycharm...
	project = object()
	project.folder = ''

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
	def _StreamCheck(self):
		return self.comp.op('./comm/streamCheck')

	def StartStream(self):
		streamcheck = self._StreamCheck
		if streamcheck[0] == 0:
			self._WriteToLog("DEBUG", 'pulsed. now starting stream..')
			self._WriteToConsole('starting stream')
			self._DoStartStream()
			streamcheck.par.value0 = 1
		else:
			self._WriteToLog("DEBUG", 'stream already active..')
			self._WriteToConsole("Stream already active, try stopping existing stream.")

	def _DoStartStream(self):
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

	def StopStream(self):
		self._WriteToLog("DEBUG", 'pulsed. now stopping stream.')
		self._WriteToConsole('stopping stream')
		self._DoStopStream()
		self._StreamCheck.par.value0 = 0

	def _DoStopStream(self):
		inQ = self._StreamOutQueue
		inQ.put('STOP')

	def Stream_OnFrameStart(self):
		try:
			# check queue for tweet
			inQ = self._StreamInQueue
			value = inQ.get_nowait()

			# prep json
			import json
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
			outdat = self._StreamOutputTable
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

	@property
	def StreamOutputTable(self):
		return self.comp.par.Streamoutput.eval() or self.comp.op('./python/default_stream_table')

	@property
	def _SearchOutputTable(self):
		return self.comp.par.Streamoutput.eval() or self.comp.op('./python/tweetTable')

	def ClearStreamResults(self):
		self._ClearResultsTable(self.StreamOutputTable)

	def _ClearResultsTable(self, outdat):
		outdat.insertRow(self._headers)
		outdat.setSize(1, len(self._headers))

	def StartSearch(self):
		self._WriteToLog("DEBUG", "pulsed. now starting search..")
		self.comp.op('./python/search').run()

	@property
	def _Storage(self):
		return self.comp.op('./python')

	@property
	def _StreamInQueue(self):
		return self._Storage.fetch('streamInQ')

	@_StreamInQueue.setter
	def _StreamInQueue(self, val):
		self._Storage.store('streamInQ', val)

	@property
	def _StreamOutQueue(self):
		return self._Storage.fetch('streamOutQ')

	@_StreamOutQueue.setter
	def _StreamOutQueue(self, val):
		self._Storage.store('streamOutQ', val)

	@property
	def _CommFifo1(self):
		return self.comp.op('./comm/fifo1')

	def OnStart(self):
		self._CommFifo1.par.clear.pulse()

		import sys
		mypath = project.folder + '/Twitter/pylib/'
		if mypath not in sys.path:
			sys.path.append(mypath)

		self._StreamCheck.par.value0 = 0

	def OnCreate(self):
		self._CommFifo1.par.clear.pulse()

		import sys
		mypath = project.folder + '/Twitter/pylib/'
		if mypath not in sys.path:
			sys.path.append(mypath)

		self._StreamCheck.par.value0 = 0

	def _WriteToLog(self, logtype, message):
		self.comp.mod.writeTo.log(logtype, message)

	def _WriteToConsole(self, message):
		self.comp.mod.writeTo.console(message)
