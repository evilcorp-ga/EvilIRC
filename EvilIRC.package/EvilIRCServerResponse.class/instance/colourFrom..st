adding
colourFrom: aChar
"IRC Colours"
	aChar = $0 ifTrue: [ ^Color white ].
	aChar = $1 ifTrue: [ ^Color black ].
	aChar = $2 ifTrue: [ ^Color blue ].
	aChar = $3 ifTrue: [ ^Color green ].
	aChar = $4 ifTrue: [ ^Color red ].
	aChar = $5 ifTrue: [ ^Color brown ].
	aChar = $6 ifTrue: [ ^Color purple ].
	aChar = $7 ifTrue: [ ^Color orange ].
	aChar = $8 ifTrue: [ ^Color yellow ].
	aChar = $9 ifTrue: [ ^Color lightGreen ].
	^Color green