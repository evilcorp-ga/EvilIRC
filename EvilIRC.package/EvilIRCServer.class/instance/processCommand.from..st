initialization
processCommand: aCmd from: textArr
	aCmd = 'PRIVMSG' ifTrue: [ self processPrivMsg: textArr].
	aCmd = 'NOTICE' ifTrue: [ self processNotice: textArr ].
	aCmd = 'JOIN' ifTrue: [ self processJoin: textArr ].
	aCmd = 'QUIT' ifTrue: [ self processQuit: textArr ].