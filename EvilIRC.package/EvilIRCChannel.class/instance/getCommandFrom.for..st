accessing
getCommandFrom: aCmd for: aCol
	aCmd = 'JOIN' ifTrue: [ self server addChannel: aCol first].
	aCmd = 'QUIT' ifTrue: [ self server sendCommand: 'QUIT' ].
	aCmd = 'NAMES' ifTrue: [ self getNames ].
	aCmd = 'MSG' ifTrue: [ self server addMsgTag: aCol. ^'PRIVMSG ' ].
	^nil 
	