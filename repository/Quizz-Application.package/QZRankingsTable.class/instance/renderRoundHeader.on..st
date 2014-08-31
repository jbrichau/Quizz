rendering
renderRoundHeader: aRound on: html
	super renderRoundHeader: aRound on: html.
	html tbsBadge class:'pull-right';with: aRound maxScore greaseString.