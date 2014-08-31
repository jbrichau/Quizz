rendering
renderContentOn: html
	self list
		ifEmpty:[self renderWelcomeScreenOn: html]
		ifNotEmpty:[self renderListOn: html].
	self renderAddNewOn: html.
	self renderLockingOn: html.