accessing
getCommandFrom: aCmd for: aCol
	| aRes | 
	aRes := EvilIRCClientRequest 
		source: self name 
		target: (aCol ifEmpty: [ nil ] ifNotEmpty: [aCol first]) 
		command: aCmd.
	aRes tab: self.
	aRes extra: aCol.
	aRes isOper ifTrue: [ self server oper: aRes ].
	aRes isNick ifTrue: [ self server changeNick: aRes ].
	aRes isJoin ifTrue: [ self server addChannel: aRes].
	aRes isQuit ifTrue: [ self server sendCommand: 'QUIT' ].
	aRes isNames ifTrue: [ self getNames ].
	aRes isMsg ifTrue: [ aRes text: (aRes extra last). self server addMsgTag: aRes. ^'PRIVMSG ' ].
	aRes isAction ifTrue: [ 
		aRes source: self server nick.
		aRes text: (String streamContents: [:st | aCol do: [:e | st nextPutAll: e; space]]).
		aRes target: self name.
		self server sendCommand: 'PRIVMSG ', self name,' ',(Character home asString),'ACTION ',aRes text,(Character home asString).
		self server processAction: aRes  ].
	^nil 
	