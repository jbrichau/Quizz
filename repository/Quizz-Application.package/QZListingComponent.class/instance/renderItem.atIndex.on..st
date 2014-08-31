rendering
renderItem: anItem atIndex: anIndex on: html
 	html strong: anIndex greaseString.
	html text: '. '.
	html span
		class: 'item-name';
		with: anItem name.