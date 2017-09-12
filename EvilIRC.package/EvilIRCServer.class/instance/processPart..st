initialization
processPart: aRes
	| aChan |
	aRes target isNil ifFalse: [
		aChan := self getCaseInsensitiveTabNameFor: (aRes target).
		aChan ifNotNil: [ 
			self getNamesFor: aChan.
			aChan addTextToChannel: ((aRes source,' Left ',aRes target) asText allBold makeAllColor: Color lightBlue).
		]
	]