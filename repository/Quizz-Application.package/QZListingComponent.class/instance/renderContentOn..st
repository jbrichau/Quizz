rendering
renderContentOn: html
	self list
		ifEmpty:[self renderWelcomeScreenOn: html]
		ifNotEmpty:[self renderListOn: html].