actions
switchMultiplierForTeam: aTeam onRound: aRound
	(aTeam hasMultiplierForRound: aRound)
		ifTrue:[aTeam removeMultiplierForRound: aRound]
		ifFalse:[aTeam multiplierForRound: aRound put: nil]