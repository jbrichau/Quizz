accessing
multiplierForRound: aRound
	^ multipliersPerRound at: aRound ifAbsent:[[:x | x]]