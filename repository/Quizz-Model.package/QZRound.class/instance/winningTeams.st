accessing
winningTeams
	| max |
	max := scoresPerTeam associations detectMax:[:assoc | assoc value].
	^ (scoresPerTeam associations select:[:assoc | assoc value = max]) collect:[:assoc | assoc key]