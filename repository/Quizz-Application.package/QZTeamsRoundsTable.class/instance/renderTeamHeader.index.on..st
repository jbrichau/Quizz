rendering
renderTeamHeader: team index: index on: html

 	html strong: 'Tafel ',(team numberInEvent: self session event) greaseString.
	html text: ' - '.
	html text: team name