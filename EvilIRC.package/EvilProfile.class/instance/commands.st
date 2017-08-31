accessing
commands
	^ commands ifNil: [ commands := OrderedCollection new. commands ]