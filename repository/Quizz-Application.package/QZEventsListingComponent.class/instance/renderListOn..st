rendering
renderListOn: html

	html heading: [
			html text: 'Alle Evenementen'.
			html space.
			html small: 'Selecteer om te beginnen' ].
			
	html tbsListGroup
		"script: (self gridScriptForEventNameClickOn: html);"
		with: [ 
			self list doWithIndex:[:event :index | 
				html tbsListGroupItem:[
						html anchor
							callback: [ self session event: event. self call: (QZEventEditingComponent new) ];
							with: [ self renderItem: event atIndex: index on: html ].
						self renderItemOperations: event on: html ] ].
	].