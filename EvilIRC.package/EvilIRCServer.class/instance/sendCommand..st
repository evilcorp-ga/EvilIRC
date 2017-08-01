initialization
sendCommand: aString
	^self socket sendCommand: aString utf8Encoded 