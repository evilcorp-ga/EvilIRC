initialization
processMode: aRes
	| modeArr aUser |
	"1. bot. 3 channel. 4 mode. 5 user"
	"mode/#evilcorp [+o dusty] by ChanServ"
	(self getCaseInsensitiveTabNameFor: (aRes target))
		addTextToChannel: ('mode/',(aRes target),' [',(aRes sourceUser),'] ',aRes text)
	
	
	