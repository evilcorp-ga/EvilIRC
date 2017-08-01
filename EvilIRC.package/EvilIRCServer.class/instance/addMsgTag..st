adding
addMsgTag: anArr 
		| aUser aTab aMsg |
		(self getCaseInsensitiveTabNameFor: (anArr first)) ifNil:[
		aUser := EvilIRCUser new name: (anArr first).
		aUser  server: self.
		aTab := TabModel new.
		aTab label: aUser name.
		aTab contents: aUser buildWithSpec.
		self channels addTab: aTab.
		anArr size > 1 ifTrue: [  
		aMsg := String streamContents: [ :st | anArr from: 2 to: anArr size do: [ :e | st nextPutAll: e; space ] ] ] ifFalse: [aMsg := ''].
		self socket sendCommand: 'PRIVMSG ', aUser name,' ',aMsg.
		self actualChannels at: aUser name put: aUser]