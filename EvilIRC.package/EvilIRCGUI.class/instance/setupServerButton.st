initialization
setupServerButton
self newServerButton action: [ | aReq |
		aReq := (MorphicUIManager new request: 'host:port:nickname') substrings: ':'.
		aReq size < 2 
			ifFalse: [  
				aReq size = 3
					ifTrue: [ self setupServersList: (EvilIRCServer openHost: (aReq first trimBoth) port: (aReq second trimBoth asNumber) nick: (aReq last trimBoth))  ]
					ifFalse: [ self setupServersList: (EvilIRCServer openHost: (aReq first trimBoth) port: (aReq last trimBoth asNumber)) ]
			]
		 ]