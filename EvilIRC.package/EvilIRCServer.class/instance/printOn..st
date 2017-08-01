initialization
printOn: aStream
	aStream nextPutAll: self host.
	aStream nextPutAll: ':'.
	aStream nextPutAll: self port asString.