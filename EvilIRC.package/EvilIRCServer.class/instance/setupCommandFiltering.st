initialization
setupCommandFiltering
	[
		[self socket isConnected] whileTrue: [ | aLine aRes|
			aLine := [self socket nextLine] on: ConnectionClosed do: [].
			aLine notNil ifTrue: [
			(aLine beginsWith: 'PING') 
				ifTrue: [ self sendCommand: 'PONG' ]
				ifFalse: [  
					[self log addTextToChannel: aLine] on: ConnectionClosed do: [].
					(aLine beginsWith: 'ERROR') ifFalse:[
					Transcript crShow: aLine.
					aRes := EvilIRCServerResponse on: aLine.
						self processCommand: aRes
				]]
		]]
	] fork.