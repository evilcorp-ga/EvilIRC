initialization
setupCommandFiltering
	[
		[self socket isConnected] whileTrue: [ | anArr textArr aCmd aLine |
			aLine := [self socket nextLine] on: ConnectionClosed do: [].
			aLine notNil ifTrue: [
			(aLine beginsWith: 'PING') 
				ifTrue: [ self sendCommand: 'PONG' ]
				ifFalse: [  
					[self log addTextToChannel: aLine] on: ConnectionClosed do: [].
					anArr := aLine substrings: ' '.
					textArr := aLine substrings: ':'.
					anArr size > 1 ifTrue: [ aCmd := anArr at: 2 ] ifFalse: [ aCmd := 0 ].
					aCmd asInteger notNil ifTrue: [ 
						Transcript crShow: 'Int: ',aCmd,' ', aLine.
						self processResponse: aCmd from: textArr
					] ifFalse: [  
						Transcript crShow: 'Str: ',aCmd,' ', aLine.
						self processCommand: aCmd from: textArr.
					]
				]
		]]
	] fork.