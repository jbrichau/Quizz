rendering
renderListOn: html
	html tbsListGroup
		script: (html jQuery this sortable 
						onStop: (html jQuery ajax
										callback: [ :values |  self setSorted: values ]
										passengers: (html jQuery this find: 'a');
										onComplete:(html javascript refresh)));
		with: [ 
			self list doWithIndex:[:item :index | 
				html tbsLinkifyListGroupItem
					passenger: item;
					"onClick:(html javascript callback: [ self call: (QZEventComponent new event: event; yourself) ]);"
					with: index greaseString,'. ',item name ]
		].
	self renderAddNewOn: html.