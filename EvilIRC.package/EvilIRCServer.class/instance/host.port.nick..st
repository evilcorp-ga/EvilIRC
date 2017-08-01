initialization
host: aHost port: aPort nick: aNick
	self nick: aNick.
	self host: aHost.
	self port: aPort asNumber.
	socket := SocketStream openConnectionToHostNamed: self host port: self port.
	self socket noTimeout.
	self socket autoFlush.
	self log addTextToChannel: self socket nextLine.
	self log addTextToChannel: self socket nextLine.
	self sendCommand: 'USER ',self nick,' ',self nick,' ',self nick,': I am EVIL'.
	self sendCommand: 'NICK ',self nick.
	self setupCommandFiltering.