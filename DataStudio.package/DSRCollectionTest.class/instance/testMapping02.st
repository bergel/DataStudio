tests
testMapping02
	| map |
	c addAll: #('ABC' 'DEF').
	map := c getMapping.
	self assert: map class equals: DSGenericMapping