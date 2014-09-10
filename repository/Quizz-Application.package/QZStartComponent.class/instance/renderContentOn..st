rendering
renderContentOn: html

	eventsListing renderOn: html.
	html script: (self keepAliveScriptOn: html).