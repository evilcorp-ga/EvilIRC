processing
process: aString
	| index lastIndex responseString anArr|
	index := aString indexOf: $:.
	lastIndex := aString indexOf: $: startingAt: index +1.
	lastIndex = 0 ifTrue: [ lastIndex := aString size ].
	responseString := aString copyFrom: index + 1 to: lastIndex.
	text := aString copyFrom: lastIndex + 1 to: aString size.
	text = 'PING' ifTrue: [ command := '' ].
	anArr := (responseString trimBoth substrings: ' ') collect: [ :e | e trimBoth ].
	source := anArr at: 1.
	command := anArr at: 2.
	anArr size = 2 ifTrue: [ command := nil ] ifFalse: [ target := anArr at: 3 ].
	self setTargetFrom: anArr.
	(text trimBoth beginsWith: (Character home) asString) & ((text asUppercase includesSubstring: 'PING') not) ifTrue: [ command := 'ACTION' ].
	(text trimBoth beginsWith: (Character enter) asString) ifTrue: [ self colour: true ].
	self isAction ifTrue: [ text := (text copyFrom: 8 to: text size) trimBoth ].
	self isKick ifTrue: [ kickedUser := anArr at: 4 ].
	self isMode ifTrue: [ text := (aString copyFrom: ((aString indexOfSubCollection: target) + target size) to: aString size) trimBoth ].