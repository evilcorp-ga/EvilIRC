initialization
processQuit: aRes
	| aChan |
	aChan := self getCaseInsensitiveTabNameFor: aRes target.
	aChan ifNotNil: [ self getNamesFor: aChan ].