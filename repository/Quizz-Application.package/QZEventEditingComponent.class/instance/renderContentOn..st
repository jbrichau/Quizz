rendering
renderContentOn: html
	html tbsNav beTabs; with: [ 
		subComponents do:[:comp |
			html tbsNavItem 
				beActiveIf: activeComponent == comp ; 
				with: [ 
					html anchor 
						callback:[activeComponent := comp. activeComponent receivesTabFocus]; 
						with: [ html text: comp menuName.
								  activeComponent == comp ifTrue:[
										html html: ' '.
								  		comp renderLockStateOn: html ] ] ] ] ].
					
	activeComponent renderOn: html