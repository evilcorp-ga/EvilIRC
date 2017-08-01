specs
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newRow: [ :row |
			row
			newColumn: [ :c |
				c
				newRow: [:r | r add: #newServerButton width: 75] height: 25;
				newRow: #tabs
			]
		]
		yourself