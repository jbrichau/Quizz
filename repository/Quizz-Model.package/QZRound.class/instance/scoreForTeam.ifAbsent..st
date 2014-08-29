accessing
scoreForTeam: aTeam ifAbsent: aBlock
	^ scoresPerTeam at: aTeam ifAbsent: aBlock