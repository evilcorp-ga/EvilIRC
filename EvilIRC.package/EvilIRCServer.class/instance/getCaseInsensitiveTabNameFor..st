initialization
getCaseInsensitiveTabNameFor: aString
	| tmpDict |
	tmpDict := Dictionary new.
	self actualChannels keysAndValuesDo: [ :k :v |
		tmpDict at: k asUppercase put: v ].
	^tmpDict at: aString asUppercase ifAbsent: [ nil ]