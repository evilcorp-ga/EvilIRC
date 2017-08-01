initialization
processResponse: aCmd from: textArr
	aCmd asInteger = 353 ifTrue: [ textArr inspect. self addUsersToChannelWith: textArr]