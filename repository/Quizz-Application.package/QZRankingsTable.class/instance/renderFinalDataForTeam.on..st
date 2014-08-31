rendering
renderFinalDataForTeam: aTeam on: html
	html tableData: [ 
		html strong: (self scoreForTeam: aTeam) ]