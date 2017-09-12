adding
channelText
	self colour ifTrue: [
		self getTextWithColours
	].
	^('[ ',self sourceUser, ' ]    ') asText allBold, self text asText