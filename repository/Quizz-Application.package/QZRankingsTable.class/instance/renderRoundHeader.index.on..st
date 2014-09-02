rendering
renderRoundHeader: aRound index: index on: html
	super renderRoundHeader: aRound index: index on: html.
	html tbsBadge class:'pull-right';with: aRound maxScore greaseString.