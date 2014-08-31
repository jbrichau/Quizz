rendering
renderContentOn: html

	html tbsNavbar beDefault with: [ 
		html tbsNavbarHeader: [
			html tbsNavbarBrand
				url: html actionUrl withoutQuery;
				with: 'Quizz'].
		
		html tbsNavbarText
			with: (self session event ifNil:[''] ifNotNil:[:e | e name]).
			
		self renderRankingDialogOn: html.
			].
		
	html tbsContainer: [ self renderNextOn: html ] 