rendering
renderRoundHeader: aRound on: html
	super renderRoundHeader: aRound on: html.
	html tbsButton 
		bePrimary;
		beExtraSmall;
		onClick: (html jQuery ajax callback:[self openRound: aRound]; onComplete: (html javascript refresh));
		with: 'Open'.