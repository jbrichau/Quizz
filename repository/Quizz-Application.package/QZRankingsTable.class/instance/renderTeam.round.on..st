rendering
renderTeam: aTeam round: aRound on: html
	html tableData
		with: [ 
			html text: (aRound scoreForTeam: aTeam withMultiplier: self session applymultipliers ifAbsent:[ '' ]).
			(self session applymultipliers and:[ aTeam hasMultiplierForRound: aRound ]) 
				ifTrue:[ html span class:'pull-right'; fontAwesome; fontAwesomeAsteriskIcon ]  ]