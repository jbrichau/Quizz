rendering
renderListOn: html
	html tbsListGroup: [ 
		self list do:[:item | 
			html tbsLinkifyListGroupItem 
				"onClick:(html javascript callback: [ self call: (QZEventComponent new event: event; yourself) ]);"
				with: item name ]
		].
	self renderAddNewOn: html.