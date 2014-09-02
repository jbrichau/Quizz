private
isLocked
	^ unlocked not and:[self session event rounds anySatisfy:[:round | round hasScores]]