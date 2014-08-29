rendering
renderContentOn: html
	eventsListing renderOn: html.
	
	html anchor callback: [ self call: QZRankingsTable new ]; with: 'rankings'.