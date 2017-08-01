initialization
processNotice: textArr
	| aUsr aTab text|
	aUsr := (textArr first substrings: '!') first.
	aTab := self getCaseInsensitiveTabNameFor: aUsr.
	aTab isNil ifTrue: [ self addMsgTag: aUsr ].
	text := aUsr ,' > ',textArr last.
	aTab addTextToChannel: text
	
	
	