specs
exampleAutoLogin
	self open model setupServersList: (EvilIRCServer openHost: 'irc.evilcorp.ga' port: 6667 nick: 'DustyEvilIRC')