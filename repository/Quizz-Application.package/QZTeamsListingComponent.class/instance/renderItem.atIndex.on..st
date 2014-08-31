rendering
renderItem: aTeam atIndex: anIndex on: html
 	html strong: 'Tafel ',(aTeam numberInEvent: self session event) greaseString.
	html text: ' - '.
	html span
		class: 'item-name';
		with: aTeam name