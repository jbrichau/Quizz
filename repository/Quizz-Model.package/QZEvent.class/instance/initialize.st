initialization
initialize
	super initialize.
	teams := SortedCollection sortBlock:[:t1 :t2 | t1 name <= t2 name ].
	rounds := OrderedCollection new.