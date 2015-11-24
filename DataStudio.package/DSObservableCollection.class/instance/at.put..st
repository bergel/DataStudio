accessing
at: index put: value
	self announce: (DSAddCollectionEvent new object: value).
	collection at: index put: value