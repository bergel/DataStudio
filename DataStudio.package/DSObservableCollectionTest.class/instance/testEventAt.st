test-events
testEventAt

	| t |
	t := nil.
	c add: 42; add: 45.
	c when: DSOneElementCollectionEvent do: [ :evt | t := evt ].
	c at: 1.
	self assert: t notNil.