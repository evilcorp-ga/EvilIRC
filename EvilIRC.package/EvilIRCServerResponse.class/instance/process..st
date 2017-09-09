processing
process: aString
	| index lastIndex responseString anArr|
	index := aString indexOf: $:.
	lastIndex := aString indexOf: $: startingAt: index +1.
	lastIndex = 0 ifTrue: [ lastIndex := aString size ].
	responseString := aString copyFrom: index + 1 to: lastIndex - 1.
	text := aString copyFrom: lastIndex + 1 to: aString size.
	anArr := (responseString substrings: ' ') collect: [ :e | e trimBoth ].
	source := anArr at: 1.
	command := anArr at: 2.
	self setTargetFrom: anArr.
	(text trimBoth beginsWith: (Character home) asString) ifTrue: [ command := 'ACTION' ].
	(text trimBoth beginsWith: (Character enter) asString) ifTrue: [ self colour: true ].
	self isAction ifTrue: [ text := (text copyFrom: 8 to: text size) trimBoth ].
	self isMode ifTrue: [ text := (aString copyFrom: ((aString indexOfSubCollection: target) + target size) to: aString size) trimBoth ].