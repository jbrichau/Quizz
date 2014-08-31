rendering
renderItemOperations: anItem on: html
	html div class:'pull-right'; with: [  
		html tbsButton 
			beInfo;
			beExtraSmall;
			"onClick: (html javascript callback:[self ]);"
			with: 'wijzig'.
		html space.
		html tbsButton 
			beDanger;
			beExtraSmall;
			onClick: (html javascript callback:[self removeItem: anItem]);
			with: 'verwijder'
		]