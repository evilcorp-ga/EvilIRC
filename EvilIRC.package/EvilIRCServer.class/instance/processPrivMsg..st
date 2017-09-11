initialization
processPrivMsg: aRes
	self addChannel: aRes.
	aRes target isNil ifTrue: [ ^nil ].
	(self getCaseInsensitiveTabNameFor: aRes target) addTextToChannel: aRes channelText