as yet unclassified
sourceUser
	| anArr |
	anArr := self source substrings: '!'.
	^anArr size = 1 ifTrue: [ self source ] ifFalse: [ anArr first ]