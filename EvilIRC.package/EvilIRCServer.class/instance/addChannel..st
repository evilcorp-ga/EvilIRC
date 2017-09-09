adding
addChannel: aRes
		| aChannel aTab |
		aRes target isNil ifFalse: [  
		(self getCaseInsensitiveTabNameFor: aRes target) ifNil: [  
		aChannel := EvilIRCChannel new name: aRes target.
		aChannel  server: self.
		aTab := TabModel new.
		aTab label: aChannel name.
		aTab contents: aChannel buildWithSpec.
		self channels addTab: aTab.
		self sendCommand: 'JOIN ', aChannel name.
		self actualChannels at: aChannel name put: aChannel ]]