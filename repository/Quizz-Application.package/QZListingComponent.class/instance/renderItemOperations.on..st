rendering
renderItemOperations: anItem on: html
	self isLocked ifFalse:[
	html div class:'pull-right'; with: [  
		html tbsButton 
			beInfo;
			beExtraSmall;
			onClick: (html javascript callback:[self editItem: anItem]);
			with: 'wijzig'.
		html space.
		html tbsButton 
			beDanger;
			beExtraSmall;
			onClick: (html javascript callback:[self removeItem: anItem]);
			with: 'verwijder'
		] ]