initialization
processMode: aRes

	(self getCaseInsensitiveTabNameFor: (aRes target))
	ifNotNilDo: [ :chan |
		chan addTextToChannel: (('mode/',(aRes target),' [',(aRes sourceUser),'] ',aRes text) asText allBold makeAllColor: Color lightBlue).
	self sendCommand: 'NAMES ',chan asString.
	]
	
	
	