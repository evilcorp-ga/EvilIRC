as yet unclassified
source: aString target: aString2 command: aCaptailizedString
	source := aString.
	target := aString2.
	aCaptailizedString = 'ME'
		ifTrue: [ command := 'ACTION' ]
		ifFalse: [ command := aCaptailizedString ]