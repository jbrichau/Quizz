rendering
renderListOn: html
	html tbsPageHeader: [ 
		html heading: [
			html text: 'Alle Evenementen'.
			html space.
			html small: 'Selecteer om te beginnen' ].
			
	html tbsListGroup: [ 
		self list do:[:event | 
			html tbsLinkifyListGroupItem 
				onClick:(html javascript callback: [ self call: (QZEventComponent onEvent: event) ]);
				with: event name ]
		].
	].
	self renderAddNewOn: html.