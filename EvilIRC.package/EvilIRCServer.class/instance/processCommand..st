initialization
processCommand: aRes
	aRes isUserJoin ifTrue: [ self addUsersToChannelWith: aRes ].
	aRes isPrivMsg ifTrue: [ self processPrivMsg: aRes ].
	aRes isNotice ifTrue: [ self processNotice: aRes ].
	aRes isQuit ifTrue: [ self processQuit: aRes ].
	aRes isMode ifTrue: [ self processMode: aRes ].
	aRes isJoin ifTrue: [ 
		self addChannel: aRes.
		self processJoin: aRes
	].
	aRes isKick ifTrue: [ self processKick: aRes ]