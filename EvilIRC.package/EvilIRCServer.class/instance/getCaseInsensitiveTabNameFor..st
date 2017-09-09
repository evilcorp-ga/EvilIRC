initialization
getCaseInsensitiveTabNameFor: aString
	| tmpDict |
	aString isEmptyOrNil ifTrue: [ ^nil ].
	tmpDict := Dictionary new.
	self actualChannels keysAndValuesDo: [ :k :v |
		tmpDict at: k asUppercase put: v ].
	^tmpDict at: aString asUppercase ifAbsent: [ nil ]