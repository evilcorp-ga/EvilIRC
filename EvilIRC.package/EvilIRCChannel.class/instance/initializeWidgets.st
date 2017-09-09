accessing
initializeWidgets
	channel := self instantiate: TextModel.
	input := self instantiate: TextInputFieldModel.
	users := self instantiate: ListModel.
	self input whenTextIsAccepted: [ | aThing |
		aThing := self input text veryDeepCopy.
		(aThing beginsWith: '/')
			ifTrue: [  
				self doCommand: aThing
			]
			ifFalse: [ 
				self addTextToChannel: (self server nick,' > ',aThing) asText.
				self channel sourceTextArea setScrollValue: self channel sourceTextArea extent.
				self server sendCommand: 'PRIVMSG ',self name,' ',aThing
			 ].
		self input text: ''. 
		
	]