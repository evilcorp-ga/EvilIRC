initialization
processCommand: aRes
	aRes isNames ifTrue: [ self processNames: aRes ].
	aRes isPrivMsg ifTrue: [ self processPrivMsg: aRes ].
	aRes isAction ifTrue: [ self processAction: aRes ].
	aRes isNotice ifTrue: [ self processNotice: aRes ].
	aRes isQuit ifTrue: [ self processQuit: aRes ].
	aRes isMode ifTrue: [ self processMode: aRes ].
	aRes isPart ifTrue: [ self processPart: aRes ].
	aRes isJoin ifTrue: [ 
		self addChannel: aRes.
		self processJoin: aRes
	].
	aRes isKick ifTrue: [ self processKick: aRes ]