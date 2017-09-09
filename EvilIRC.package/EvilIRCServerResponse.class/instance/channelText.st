adding
channelText
	self colour ifTrue: [
		self getTextWithColours
	].
	^(self sourceUser, ' > ') asText, self text asText