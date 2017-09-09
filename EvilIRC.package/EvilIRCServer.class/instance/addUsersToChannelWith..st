initialization
addUsersToChannelWith: aRes
		| names |
		self addChannel: aRes.
		names := aRes text substrings: ' '.
		names := names asSortedCollection collect: [:e | | aUser |
			aUser := EvilIRCUser new name: e trimBoth.
			aUser  server: self.
			(self actualChannels at: aRes target) actualUsers add: aUser.
			aUser 
		].
		(self actualChannels at: aRes target) users items: names