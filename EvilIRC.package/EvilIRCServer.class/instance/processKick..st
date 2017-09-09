initialization
processKick: aRes
	self removeTab: (self getCaseInsensitiveTabNameFor: aRes target)