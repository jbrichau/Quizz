accessing
scoreForTeam: aTeam
	^ scoresPerTeam at: aTeam ifAbsent:[nil]