accessing
scoreForTeam: aTeam withMultiplier: aBoolean ifAbsent: aBlock
	| score |
	score := scoresPerTeam at: aTeam ifAbsent: [^ aBlock value ].
	^ aBoolean
		ifTrue:[(aTeam multiplierForRound: self) value: score]
		ifFalse:[score]