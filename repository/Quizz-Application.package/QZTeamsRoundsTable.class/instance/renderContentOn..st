rendering
renderContentOn: html
	
	| table |
	table := html tbsTable.
	self renderScriptsFor: table on: html. 
	table beCondensed; beBordered; with: [ 
		html tableHead: [ 
			html tableRow:[
				html tableHeading colSpan: 2; with: 'Team'.
				self session event rounds do:[:round | html tableHeading: [ html render: round name. self renderExtraHeadingForRound: round on: html ] ].
				self renderFinalHeaderOn: html ].
		html tableBody: [ 
			self teams doWithIndex: [:team :index | 
				html tableRow: [
					html tableData: index greaseString.
					html tableData: team name.
					self session event rounds do: [:round | self renderTeam: team round: round on: html ].
					self renderFinalDataForTeam: team on: html ] ] ] ] ]