rendering
renderContentOn: html
	
	html tbsTable beCondensed; with: [ 
		html tableHead: [ 
			html tableRow:[
				html tableHeading: 'Team'.
				self event rounds do:[:round | html tableHeading: round name] ].
		html tableBody: [ 
			self event teams do: [:team | 
				html tableRow: [
					html tableData: team name.
					self event rounds do: [:round | html tableData: (round scoreForTeam: team)]]]]]]