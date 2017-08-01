specs
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newColumn: [ :row |
			row 
				newColumn: [:column |
					column newRow: [:r |
						r newColumn: #channel.
					]
				];
				newRow: #input height: 25]