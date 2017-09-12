initialization
processKick: aRes
	aRes kickedUser = self nick
		ifTrue: [self removeTab: (self getCaseInsensitiveTabNameFor: aRes target)]
		ifFalse: [ 
			| aChan |
			aRes target isNil ifFalse: [
				aChan := self getCaseInsensitiveTabNameFor: (aRes target).
				aChan ifNotNil: [ 
					self getNamesFor: aChan.
					aChan addTextToChannel: ((aRes kickedUser,' kicked from ',aRes target,' ',aRes text) asText allBold makeAllColor: Color lightBlue).
				]
			]
		]