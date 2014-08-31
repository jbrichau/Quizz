initialization
initialize
	
	super initialize.
	teamsWithScores := Dictionary new.
	winningTeamsPerRound := Dictionary new.
	self session event teams do:[:team | teamsWithScores at: team put: (self rounds inject: 0 into:[:total :round | total + (self scoreForTeam: team inRound: round)])].
	self rounds do:[:round | winningTeamsPerRound at: round put: round winningTeams ]
