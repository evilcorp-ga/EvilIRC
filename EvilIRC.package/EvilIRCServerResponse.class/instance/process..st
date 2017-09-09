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
	self isMode ifTrue: [ text := (aString copyFrom: ((aString indexOfSubCollection: target) + target size) to: aString size) trimBoth ].
	Transcript crShow: '(',responseString,')(',text asString,')'.