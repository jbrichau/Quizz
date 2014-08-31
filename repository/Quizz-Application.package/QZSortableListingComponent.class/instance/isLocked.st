private
isLocked
	^ super isLocked and:[self session event rounds anySatisfy:[:round | round hasScores]]