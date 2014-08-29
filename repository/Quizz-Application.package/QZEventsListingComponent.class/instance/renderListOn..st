rendering
renderListOn: html

	html heading: [
			html text: 'Alle Evenementen'.
			html space.
			html small: 'Selecteer om te beginnen' ].
			
	html tbsListGroup: [ 
		self list do:[:event | 
			html tbsLinkifyListGroupItem
					callback: [ self session event: event. self call: (QZEventEditingComponent new) ];
					with: event name ].
	].
	self renderAddNewOn: html. 