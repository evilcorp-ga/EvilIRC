initialization
setupCommandFiltering
	[
		[self socket isConnected] whileTrue: [ | anArr textArr aCmd aLine |
			aLine := [self socket nextLine] on: ConnectionClosed do: [].
			aLine notNil ifTrue: [
			(aLine beginsWithSubCollection: 'PING') 
				ifTrue: [ self sendCommand: 'PONG' ]
				ifFalse: [  
					[self log addTextToChannel: aLine] on: ConnectionClosed do: [].
					anArr := aLine substrings: ' '.
					textArr := aLine substrings: ':'.
					anArr size > 1 ifTrue: [ aCmd := anArr at: 2 ] ifFalse: [ aCmd := 0 ].
					aCmd asInteger notNil ifTrue: [ self processResponse: aCmd from: textArr ].
					self processCommand: aCmd from: textArr.
				]
		]]
	] fork.