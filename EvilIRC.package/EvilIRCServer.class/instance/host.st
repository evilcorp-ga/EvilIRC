initialization
host
	^host ifNil: [ host := self class host. host ]