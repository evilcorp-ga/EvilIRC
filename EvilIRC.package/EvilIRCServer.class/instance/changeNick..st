as yet unclassified
changeNick: aRes
	self nick: aRes target.
	self sendCommand: 'NICK ',aRes target