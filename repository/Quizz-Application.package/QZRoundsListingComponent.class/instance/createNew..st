actions
createNew: aName
	^ (QZRound new name: (aName ifEmpty:['Nieuwe ronde']))