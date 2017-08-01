initialization
initializeWidgets
	newServerButton := self instantiate: ButtonModel.
	tabs := self instantiate: TabManagerModel.
	self newServerButton label: 'New Server'.
	self setupServerButton.