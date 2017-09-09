adding
getTextWithColours
	| aRange colorLocations newText |
	newText := '' asText.
	aRange := self text asString allRangesOfSubstring: (Character enter) asString.
	colorLocations := aRange collect: [ :e | | anOC |
		anOC := OrderedCollection new.
		anOC add: (self text asString at: (e + 1) sum).
		anOC add: (self text asString at: (e + 2) sum).
		anOC add: (self text asString at: (e + 3) sum).
		anOC add: e sum.
		anOC
	 ].
	colorLocations doWithIndex: [ :aCol :i | | bg fg anInt |
		fg := (self colourFrom: aCol first).
		i = colorLocations size ifTrue: [ anInt := self text size ] ifFalse: [ anInt := (colorLocations at: i + 1) at: 4 ].
		((aCol at: 2) = $,)
			ifTrue: [ newText append: (((self text copyFrom: (aCol at: 4) + 4 to: anInt)) asString asText makeAllColor: fg) ]
			ifFalse: [ newText append: (((self text copyFrom: (aCol at: 4) + 2 to: anInt)) asString asText makeAllColor: fg) ]
		
		 ].
	self text: newText