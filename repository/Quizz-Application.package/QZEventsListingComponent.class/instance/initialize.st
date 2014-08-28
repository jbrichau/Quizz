initialization
initialize
	super initialize.
	self addDecoration: QZNavigationBar new.
	list := SortedCollection sortBlock:[:e1 :e2 | e1 name <= e2 name]