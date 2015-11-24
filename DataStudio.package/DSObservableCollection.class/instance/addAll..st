adding
addAll: objects
	self announce: (DSAddAllCollectionEvent new objects: objects).
	collection addAll: objects