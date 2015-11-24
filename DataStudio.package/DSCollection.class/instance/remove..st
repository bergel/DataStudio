removing
remove: object
	self announce: (DSRemoveCollectionEvent new object: object).
	collection remove: object