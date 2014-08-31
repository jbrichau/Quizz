rendering
renderTeam: aTeam round: aRound on: html
	html tableData
		class: 'bg-primary' if: (self showMultiplierFor: aTeam in: aRound);
		with: [ html text: (aRound scoreForTeam: aTeam withMultiplier: self session applymultipliers ifAbsent:['']) ]