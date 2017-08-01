initialization
addUsersToChannelWith: textArr
		| aRes names |
		aRes := (textArr first trimBoth substrings: '=') last trimBoth.
		names := textArr last trimBoth substrings: ' '.
		names := names asSortedCollection collect: [:e | | aUser |
			aUser := EvilIRCUser new name: e trimBoth.
			aUser  server: self.
			aUser 
		].
		(self actualChannels at: aRes) users items: names