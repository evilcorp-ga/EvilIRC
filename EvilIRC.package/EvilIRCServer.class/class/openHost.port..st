specs
openHost: aHost port: aPort
	host := aHost.
	^(self
		openHost: aHost
		port: aPort
		nick: 'EvilIRCUser')