accessing
getCommandFrom: aCmd for: aCol
	| aRes |
	aRes := EvilIRCClientRequest 
		source: self name 
		target: (aCol ifEmpty: [ nil ] ifNotEmpty: [aCol first]) 
		command: aCmd.
	aCmd = 'JOIN' ifTrue: [ self server addChannel: aRes].
	aCmd = 'QUIT' ifTrue: [ self server sendCommand: 'QUIT' ].
	aCmd = 'NAMES' ifTrue: [ self getNames ].
	aCmd = 'MSG' ifTrue: [ self server addMsgTag: aRes. ^'PRIVMSG ' ].
	^nil 
	