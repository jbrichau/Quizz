rendering
renderItemName: anItem on: html
	(self isLocked not and:[anItem == editItem])
		ifTrue:[ 
			html textInput tbsFormInline; style: 'width: 300px'; autofocus; callback:[:value | anItem name: value. editItem := nil]; onChange:((html jQuery ajax serializeThis; onComplete:(html javascript refresh))); value: anItem name.
			]
		ifFalse:[
			html span
				class: 'item-name';
				with: anItem name. ]