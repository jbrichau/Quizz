rendering
renderTeam: aTeam round: aRound on: html
	html tableData
		class: 'bg-primary' if: (aTeam hasMultiplierForRound: aRound);
		with: [ html text: (aRound scoreForTeam: aTeam ifAbsent:['']) ]