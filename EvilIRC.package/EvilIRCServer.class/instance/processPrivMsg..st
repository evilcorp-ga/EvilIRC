initialization
processPrivMsg: textArr
| newArr chan usr text|
		newArr := (textArr first substrings: ' ') asOrderedCollection collect: [ :e | e trimBoth ].
		chan := newArr last.
		usr := (newArr first substrings: '!') first.
		text := usr,' > ',textArr last.
		(self actualChannels at: chan) addTextToChannel: text