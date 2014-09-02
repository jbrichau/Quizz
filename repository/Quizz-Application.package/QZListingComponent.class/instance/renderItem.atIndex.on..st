rendering
renderItem: anItem atIndex: anIndex on: html
 	html strong: anIndex greaseString.
	html text: '. '.
	self renderItemName: anItem on: html