tests
testMapping
	| map |
	c addAll: #(43 42).
	map := c getMapping.
	self assert: map class equals: DSAbstractNumberMapping