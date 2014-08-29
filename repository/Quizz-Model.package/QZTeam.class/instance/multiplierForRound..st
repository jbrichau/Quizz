accessing
multiplierForRound: aRound
	^ multipliersPerRound at: aRound ifAbsent:[nil]