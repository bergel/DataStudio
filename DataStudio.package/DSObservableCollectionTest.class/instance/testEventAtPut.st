test-events
testEventAtPut

	| t |
	t := nil.
	c add: 42; add: 45.
	c when: DSOneElementCollectionEvent do: [ :evt | t := evt ].
	c at: 1 put: 5.
	self assert: t notNil.
	self assert: (c at: 1) equals: 5.
	self assert: t object equals: 5