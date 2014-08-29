actions
scoreTeam: aTeam forRound: aRound to: value
	| score |

	score := Integer readFromString: value.
	aRound scoreForTeam: aTeam put: score.