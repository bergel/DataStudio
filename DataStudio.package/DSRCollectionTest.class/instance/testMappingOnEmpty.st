tests
testMappingOnEmpty
	| map |
	map := c getMapping.
	self assert: map class equals: DSGenericMapping