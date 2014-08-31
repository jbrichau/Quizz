private
rounds
	^ self session event rounds select:[:r | r isVisibleInRanking ]