rendering
renderFinalDataForTeam: aTeam on: html
	html tableData: [ 
		html text: (self scoreForTeam: aTeam) ]