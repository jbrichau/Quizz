rendering
renderListOn: html
	html tbsListGroup
		"script: (self gridScriptForEventNameClickOn: html);"
		script: (html jQuery this sortable
						onStop: (html jQuery ajax
										callback: [ :values |  self setSorted: values ]
										passengers: (html jQuery this find: 'li');
										onComplete:(html javascript refresh)));
		script: (html jQuery this sortable disableIf: self isLocked);
		with: [ 
			self list doWithIndex:[:item :index | 
				html tbsListGroupItem
					passenger: item;
					"onClick:(html javascript callback: [ self call: (QZEventComponent new event: event; yourself) ]);"
					with: [ 
						self renderItem: item atIndex: index on: html.
						self renderItemOperations: item on: html ] ]
		].