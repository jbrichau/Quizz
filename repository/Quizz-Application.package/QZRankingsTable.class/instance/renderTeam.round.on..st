rendering
renderTeam: aTeam round: aRound on: html
	html tableData: [ 
		html text: (aRound scoreForTeam: aTeam ifAbsent:[''])
		 ]