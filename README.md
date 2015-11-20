#TouchDesigner-Twitter
Threaded Twitter search and stream TouchDesigner components written in Python with logging features.

##Build and Version
This tool requires 'Custom Parameters' functionality within TouchDesigner (Build 45000 and above). It was created, and is stable, in 64-bit build 47400. Recently tested in 64-bit build 56020. 

##Installation
1. Move the ```Twitter``` folder into your project's root level. 
2. Add the ```nVoid_Twitter_Tools.tox``` component into your project.
3. Go to https://apps.twitter.com/ and login with your Twitter account
4. Click the ```Create new app``` button in the Top-right
5. Fill out all the forms until you can generate all your OAuth credentials (see below)
6. Enter your credentials in the corresponding custom parameter in the ```nVoid_Twitter_Tools``` parameters.

##Pre-requisite Python files
All pre-requisite Python libraries are included as a part of the nVoid Twitter Tools folder package. 

##Notes about Twitter
See the terms of service folder for PDFs that describe the appropriate use of Twitter content and branding in your applications. 
(See - http://dev.twitter.com/overview/terms - for the most up to date Terms of Service)

Link to rate limiting documentation - http://dev.twitter.com/rest/public/rate-limiting

##Twitter Authorization
Each installation of nVoid Twitter Tools will need a corresponding application to be registered on the Twitter Developer web page. When registering a new application, note the OAuth1 authorization codes. There are 4 required codes: the application key, the application secret, the user key, and the user secret. These names can vary depending on what documentation you're reading, but as long as you get all 4 you can match them by length to the nVoid Twitter Tools settings file. 
To add your OAuth codes, select the ```nVoid_Twitter_Tools``` component in your network and go the ```Settings``` parameter page. This is where authorization codes are stored that TouchDesigner will use. If you're unsure of the authorization codes by name, they are easy to match by length to your codes. 

##Usage
The control buttons are found in the main container (nVoid_Twitter) Parameter under the 'Commands' heading.
The 3 controls are 'Start Streaming', 'Stop Streaming' and 'Perform Search'.The next tab is 'Settings'. This is where you enter your Twitter app information (from above), stream and search terms, and how many results you'd like returned when performing a search.

We don't recommend putting this tox in your main TouchDesigner process as the DATs can quickly become quite large and slow. Unless you want to add some logic to clear the tweets after a certain amount of rows in the tables or similar, we recommend putting it in another process then just sending data you need to your main process over TCP/IP DATs or other similar network protocol. 

##Logging
nVoid Twitter Tools has built-in logging features. All logs are named by the current date and saved in the /LOGS folder inside of the nVoid Twitter Tools folder package.

##Email features
nVoid Twitter Tools comes with built in support for sending emergency emails back to you on errors. To set this up, go into the ```nVoid_Twitter_Tools/local/writeTo``` and edit the ```support``` callback. In that function, there are areas marked with full capitals that you'll need to replace with your own information. To implement it, from anywhere inside the nVoid_Twitter_Tools you can call ```mod.writeTo.support('Error message here')``` and you'll be able to email yourself.

##Filter terms for searches and streams
Using a comma and space betweet search terms will return different results. A space is considered to be 'AND', while a comma between search terms would be an 'OR'.

e.g. ‘the twitter’ is 'the' AND 'twitter', and ‘the,twitter’ is 'the' OR 'twitter'

##Exposed Twitter Data:
The following 'tweet' attributes that are currently used in this plugin and are output in Table DATs:
- "Tweet Message"
- "Tweet Language"
- "Tweet TimeStamp"
- "Tweet Location"
- "Tweet Hashtags" (as a list)
- "User Full Name"
- "User Screen Name"
- "User Location"
- "User Language"
- "User Profile Image link"

##Troubleshooting:
If you find an issue, submit a pull request or post an issue on this repo. 

##Attribution
Kenneth Reitz - Requests library - https://github.com/kennethreitz/requests

If you use this in one of your projects, feel free to give us (nVoid) a shoutout or just let us know what you're up to! 
