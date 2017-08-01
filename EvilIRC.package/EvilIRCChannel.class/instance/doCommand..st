accessing
doCommand: aThing
	(aThing beginsWithSubCollection: '/') 
	ifTrue: [ | arr newArr aCmd theRest toSend |
		arr := ((aThing copyFrom: 2 to: aThing size) substrings: ' ') asOrderedCollection.
		aCmd := arr first veryDeepCopy asUppercase.
		newArr := arr copyFrom: 2 to: arr size.
		aCmd := self getCommandFrom: aCmd for: newArr.
		aCmd isEmptyOrNil ifFalse: [  
			theRest := String streamContents: [ :st | newArr do: [ :e | st nextPutAll: e; space ] ].
			toSend := aCmd,theRest.
			self server sendCommand: toSend
		]
		] 