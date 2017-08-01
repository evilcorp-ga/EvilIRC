accessing
addTextToChannel: aString
	| aText |
	aText := self channel text veryDeepCopy.
	self channel text: (aText, String crlf, aString).
	self channel sourceTextArea setScrollValue: self channel sourceTextArea extent