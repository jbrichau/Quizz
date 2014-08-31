accessing
scoreForTeam: aTeam put: aNumber
	aNumber > maxScore 
		ifTrue:[ self error: aNumber greaseString,' is hoger maximum ',maxScore greaseString]
		ifFalse:[scoresPerTeam at: aTeam put: aNumber]