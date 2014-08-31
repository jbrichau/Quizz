accessing
scoreForTeam: aTeam ifAbsent: aBlock
	| score |
	score := scoresPerTeam at: aTeam ifAbsent: [^ aBlock value ].
	^ (aTeam multiplierForRound: self) value: score