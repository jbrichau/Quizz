rendering
renderContentOn: html
	html tbsNav beTabs; with: [ 
		subComponents do:[:comp |
			html tbsNavItem 
				beActiveIf: activeComponent == comp ; 
				with: [ 
					html anchor 
						callback:[activeComponent := comp. activeComponent receivesTabFocus]; 
						with: comp menuName ]]].
					
	activeComponent renderOn: html