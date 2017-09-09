initialization
processJoin: aRes
	| aChan |
	aRes target isNil ifFalse: [  
	aChan := self getCaseInsensitiveTabNameFor: (aRes target).
	aChan ifNotNil: [ aChan getNames ]]