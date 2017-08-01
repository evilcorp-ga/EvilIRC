initialization
initializeWidgets
	| anItem |
	channels := self instantiate: TabManagerModel.
	anItem := TabModel new.
	anItem label: self log name.
	anItem contents: self log buildWithSpec.
	self channels addTab: anItem