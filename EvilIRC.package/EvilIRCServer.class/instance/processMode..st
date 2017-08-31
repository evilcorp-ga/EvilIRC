initialization
processMode: textArr
	| modeArr aUser |
	"1. bot. 3 channel. 4 mode. 5 user"
	"mode/#evilcorp [+o dusty] by ChanServ"
	modeArr := textArr first substrings: ' '.
	aUser := (modeArr first substrings: '!') first.
	(self getCaseInsensitiveTabNameFor: (modeArr at: 3)) addTextToChannel: ('mode/',(modeArr at: 3),' [',(modeArr at: 4),' ',(modeArr at: 5),'] by ',aUser)
	
	
	