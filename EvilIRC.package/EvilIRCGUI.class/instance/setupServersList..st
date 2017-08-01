initialization
setupServersList: anItem
 | aTab |
	aTab := TabModel new.
	aTab label: anItem host.
	aTab contents: anItem buildWithSpec.
	self tabs addTab: aTab