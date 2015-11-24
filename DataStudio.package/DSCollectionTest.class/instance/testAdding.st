tests-functionalities
testAdding
	c add: 42.
	self assert: c notEmpty.
	self assert: c size equals: 1