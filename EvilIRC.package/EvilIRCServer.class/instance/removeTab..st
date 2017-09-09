removing
removeTab: aTab 
	self actualChannels removeKey: aTab name.
	self channels removeTab: aTab.
	aTab delete.