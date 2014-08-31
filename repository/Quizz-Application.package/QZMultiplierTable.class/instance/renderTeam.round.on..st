rendering
renderTeam: aTeam round: aRound on: html
	html tableData
		passenger: aTeam -> aRound;
		with: [ (aTeam hasMultiplierForRound: aRound) ifTrue:[ html span fontAwesome; fontAwesomeAsteriskIcon ] ]