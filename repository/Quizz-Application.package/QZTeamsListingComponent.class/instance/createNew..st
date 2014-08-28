actions
createNew: aName
	^ QZTeam new name: (aName ifEmpty:['Nieuw team'])