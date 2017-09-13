initialization
processNotice: aRes
		| aTab text |
		aTab := self getCaseInsensitiveTabNameFor: aRes target.
		aTab isNil ifTrue: [ self addMsgTag: aRes ].
		text := '[ ',aRes target ,' ]    ',aRes text.
		text isNil | (aTab isNil) ifFalse: [aTab addTextToChannel: text]	
	