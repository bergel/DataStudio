removing
removeAll: someObjects
	self announce: (DSRemoveAllCollectionEvent new objects: someObjects).
	collection removeAll: someObjects