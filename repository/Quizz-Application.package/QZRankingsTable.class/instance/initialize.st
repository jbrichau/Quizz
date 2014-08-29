initialization
initialize
	
	super initialize.
	teamsWithScores := Dictionary new.
	self session event teams do:[:team | 
		teamsWithScores at: team put: (self session event rounds inject: 0 into:[:total :round | total + (round scoreForTeam: team ifAbsent:[0])])].
