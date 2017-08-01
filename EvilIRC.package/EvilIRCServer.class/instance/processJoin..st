initialization
processJoin: textArr 
	| aChan |
	aChan := self getCaseInsensitiveTabNameFor: (textArr last).
	aChan ifNotNil: [ aChan getNames ]