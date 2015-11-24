test-events
testWithAll

	c := DSObservableCollection withAll: #(1 2 3).
	self assert: c size equals: 3.
	self assert: (c includesAllOf: #(1 2 3))