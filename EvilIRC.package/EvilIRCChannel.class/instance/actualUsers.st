accessing
actualUsers
	^actualUsers ifNil: [ actualUsers := OrderedCollection new. actualUsers ]