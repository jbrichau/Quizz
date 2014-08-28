rendering
renderContentOn: html

	html tbsNavbar beDefault with: [ 
		html tbsNavbarBrand
			url: html actionUrl withoutQuery;
			with: 'Quizz'.
		html tbsNavbarButton: 'Evenementen'.
			html tbsBreadcrumb: [ 
		html tbsBreadcrumbSection beActive; with: 'Home' ].].
	

	
	html tbsContainer: [ self renderNextOn: html ]