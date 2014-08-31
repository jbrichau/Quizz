actions
createNew: aName
	^ QZTeam new name: (aName ifEmpty:['Nieuwe ploeg'])