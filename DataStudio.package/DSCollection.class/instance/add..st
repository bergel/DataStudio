adding
add: object
	self announce: (DSAddCollectionEvent new element: object)
	collection add: object