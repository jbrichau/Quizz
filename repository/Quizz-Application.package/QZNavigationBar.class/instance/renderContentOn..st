rendering
renderContentOn: html

	html tbsNavbar beDefault with: [ 
		html tbsNavbarBrand
			url: html actionUrl withoutQuery;
			with: 'Quizz'].
	
	html tbsContainer: [ self renderNextOn: html ]