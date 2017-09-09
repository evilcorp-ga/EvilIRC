adding
addTextToChannel: aText
	self channelText: aText.
	self channel text: self channelText.
	self channel sourceTextArea setScrollValue: self channel sourceTextArea extent