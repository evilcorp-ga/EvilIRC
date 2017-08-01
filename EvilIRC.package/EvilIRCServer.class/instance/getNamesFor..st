initialization
getNamesFor: aChannel
	self sendCommand: 'NAMES ',aChannel name.
	