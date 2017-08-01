accessing
log
	^log ifNil: [ 
		log := EvilIRCChannel new name: (self host,' log').
		log server: self.
		log ]