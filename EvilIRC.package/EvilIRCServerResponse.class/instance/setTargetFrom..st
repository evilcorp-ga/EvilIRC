initialization
setTargetFrom: anArr 
	self isNames ifTrue: [ ^target := anArr at: 5 ].
	self isJoin ifTrue: [ ^target := text ].
	self isNotice ifTrue: [ ^target := (anArr first substrings: '!') first ].
	self isPrivMsg & (((anArr at: 3 ifAbsent: ['']) beginsWith: '#') not) 
		ifTrue: [ ^target := (anArr first substrings: '!') first ]
		ifFalse: [ ^(anArr at: 3 ifAbsent: [nil]) isEmptyOrNil ifFalse: [target := anArr at: 3] ].