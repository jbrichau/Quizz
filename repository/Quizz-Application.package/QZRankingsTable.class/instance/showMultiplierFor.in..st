private
showMultiplierFor: aTeam in: aRound
	^ applymultipliers and:[aTeam hasMultiplierForRound: aRound]