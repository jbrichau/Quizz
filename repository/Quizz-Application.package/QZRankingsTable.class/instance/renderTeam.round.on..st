rendering
renderTeam: aTeam round: aRound on: html
	html tableData
		with: [ 
			html text: (aRound scoreForTeam: aTeam withMultiplier: self session applymultipliers ifAbsent:['']).
			(aTeam hasMultiplierForRound: aRound) ifTrue:[ html span class:'pull-right'; fontAwesome; fontAwesomeAsteriskIcon ]  ]