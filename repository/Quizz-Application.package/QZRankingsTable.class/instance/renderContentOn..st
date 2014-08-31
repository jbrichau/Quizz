rendering
renderContentOn: html
	html tbsPageHeader: [ 
		html heading
			class: 'text-center';
			with: [
				html text: self session event name.
				html space.
				html small: 'Ranking' ]].
	super renderContentOn: html.