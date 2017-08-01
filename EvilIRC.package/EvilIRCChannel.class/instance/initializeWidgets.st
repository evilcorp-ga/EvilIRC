accessing
initializeWidgets
	channel := self instantiate: TextModel.
	input := self instantiate: TextInputFieldModel.
	users := self instantiate: ListModel.
	self input whenTextIsAccepted: [ | aThing aText |
		aText := self channel text veryDeepCopy.
		aThing := self input text veryDeepCopy.
		(aThing beginsWith: '/')
			ifTrue: [  
				self doCommand: aThing
			]
			ifFalse: [ 
				self channel text: (aText, String crlf, self server nick,' > ',aThing).
				self channel sourceTextArea setScrollValue: self channel sourceTextArea extent.
				self server sendCommand: 'PRIVMSG ',self name,' ',aThing
			 ].
		self input text: ''. 
		
	]