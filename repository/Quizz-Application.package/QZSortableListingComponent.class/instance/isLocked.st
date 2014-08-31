private
isLocked
	^ self session event rounds anySatisfy:[:round | round hasScores]