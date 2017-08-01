initialization
processResponse: aCmd from: textArr
	aCmd asInteger = 353 ifTrue: [ self addUsersToChannelWith: textArr]