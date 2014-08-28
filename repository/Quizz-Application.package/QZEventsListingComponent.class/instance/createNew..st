actions
createNew: aName
	^ QZEvent new name: (aName ifEmpty:['Nieuw evenement'])