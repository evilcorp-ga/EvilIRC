initialization
processAction: aRes
	self addChannel: aRes.
	aRes target isNil ifTrue: [ ^nil ].
		(self getCaseInsensitiveTabNameFor: aRes target) addTextToChannel: aRes actionText