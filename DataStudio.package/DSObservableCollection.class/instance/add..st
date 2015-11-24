adding
add: object
	self announce: (DSAddCollectionEvent new object: object).
	collection add: object