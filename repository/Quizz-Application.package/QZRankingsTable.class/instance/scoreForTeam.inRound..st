private
scoreForTeam: team inRound: round
	^ (round scoreForTeam: team withMultiplier: self session applymultipliers ifAbsent:[0])