initialization
setTargetFrom: anArr 
	self isUserJoin 
		ifTrue: [ target := anArr at: 5 ]
		ifFalse: [ 
			self isPrivMsg & (((anArr at: 3 ifAbsent: ['']) beginsWith: '#') not)
				ifTrue: [ target := (anArr first substrings: '!') first ]
				ifFalse: [ (anArr at: 3 ifAbsent: [nil]) isEmptyOrNil ifFalse: [target := anArr at: 3] ]
		]