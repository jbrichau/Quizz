initialization
initialize
	
	super initialize.
	teamsWithScores := Dictionary new.
	winningTeamsPerRound := Dictionary new.
	applymultipliers := false.
	self teams do:[:team | teamsWithScores at: team put: (self rounds inject: 0 into:[:total :round | total + (round scoreForTeam: team ifAbsent:[0])])].
	self rounds do:[:round | winningTeamsPerRound at: round put: round winningTeams ]
