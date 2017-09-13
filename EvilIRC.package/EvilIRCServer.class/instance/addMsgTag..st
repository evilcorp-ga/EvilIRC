adding
addMsgTag: aRes 
		| aUser aTab |
		aRes target = 'DustyEvilIRC' ifTrue: [ ^nil ].
		aTab := (self getCaseInsensitiveTabNameFor: aRes target).
		aTab ifNil:[
		aUser := EvilIRCUser new name: (aRes target).
		aUser  server: self.
		aTab := TabModel new.
		aTab label: aUser name.
		aTab contents: aUser buildWithSpec.
		self channels addTab: aTab.
		self socket sendCommand: 'PRIVMSG ', aUser name,' ',(aRes text) asString.
		aUser addTextToChannel: (aRes text) asText.
		self actualChannels at: aUser name put: aUser]
		ifNotNil: [ 
			self socket sendCommand: 'PRIVMSG ', aRes target,' ',(aRes text) asString.
			(self actualChannels at: ((self getCaseInsensitiveTabNameFor: aRes target) name)) addTextToChannel: (aRes text) asText
		]