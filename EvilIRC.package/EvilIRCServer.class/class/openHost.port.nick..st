specs
openHost: aHost port: aPort nick: aString
	host := aHost.
	^(self new
		host: aHost
		port: aPort
		nick: aString)