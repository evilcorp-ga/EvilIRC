initialization
processMode: aRes

	(self getCaseInsensitiveTabNameFor: (aRes target))
	ifNotNil: [ :chan |
		chan addTextToChannel: (('mode/',(aRes target),' [',(aRes sourceUser),'] ',aRes text) asText allBold makeAllColor: Color lightBlue).
	self sendCommand: 'NAMES ',chan asString.
	]
	
	
	