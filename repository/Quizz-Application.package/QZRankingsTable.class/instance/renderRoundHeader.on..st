rendering
renderRoundHeader: aRound on: html
	super renderRoundHeader: aRound on: html.
	html tbsBadge: aRound maxScore greaseString.