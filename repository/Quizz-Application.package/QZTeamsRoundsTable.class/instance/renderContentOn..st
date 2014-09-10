rendering
renderContentOn: html
	
	| table |
	table := html tbsTable.
	self renderScriptsFor: table on: html. 
	table beCondensed; beBordered; beStriped; with: [ 
		html tableHead: [ 
			html tableRow:[
				html tableHeading: 'Ploeg'.
				self renderFinalHeaderOn: html.
				self rounds doWithIndex:[:round :index | html tableHeading: [ self renderRoundHeader: round index: index on: html ] ].
].
		html tableBody: [ 
			self teams doWithIndex: [:team :index | 
				html tableRow: [
					html tableData
						class: 'teamname';
						with: [self renderTeamHeader: team index: index on: html].
					self renderFinalDataForTeam: team on: html.
					self rounds do: [:round | self renderTeam: team round: round on: html ] ] ] ] ] ]