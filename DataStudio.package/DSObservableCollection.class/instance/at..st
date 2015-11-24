accessing
at: index
	| r |
	r := collection at: index.
	self announce: (DSOneElementCollectionEvent new object: r).
	^ r