initialization
sendCommand: aString
	Transcript crShow: aString utf8Encoded.
	^self socket sendCommand: aString utf8Encoded 