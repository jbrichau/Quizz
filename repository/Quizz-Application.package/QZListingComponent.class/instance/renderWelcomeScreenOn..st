rendering
renderWelcomeScreenOn: html

	html tbsJumbotron: [ 
		self renderWelcomeScreenInternalOn: html.
		html paragraph: [ self renderAddNewOn: html ] ]