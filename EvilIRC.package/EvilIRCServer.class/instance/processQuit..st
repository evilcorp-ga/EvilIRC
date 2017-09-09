initialization
processQuit: aRes
	| aChan |
	aChan := self getCaseInsensitiveTabNameFor: aRes target.
	aChan ifNotNil: [ aChan getNames ]