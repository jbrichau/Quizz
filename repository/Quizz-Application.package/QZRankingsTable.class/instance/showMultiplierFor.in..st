private
showMultiplierFor: aTeam in: aRound
	^ self session applymultipliers and:[aTeam hasMultiplierForRound: aRound]