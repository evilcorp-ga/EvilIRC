accessing
getCommandFrom: aCmd for: aCol
	| aRes |
	aRes := EvilIRCClientRequest 
		source: self name 
		target: (aCol ifEmpty: [ nil ] ifNotEmpty: [aCol first]) 
		command: aCmd.
	aRes tab: self.
	aRes isJoin ifTrue: [ self server addChannel: aRes].
	aRes isQuit ifTrue: [ self server sendCommand: 'QUIT' ].
	aRes isNames ifTrue: [ self getNames ].
	aRes isMsg ifTrue: [ self server addMsgTag: aRes. ^'PRIVMSG ' ].
	aRes isAction ifTrue: [ self server processAction: aRes  ].
	^nil 
	