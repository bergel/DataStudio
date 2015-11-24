test-events
testEventRemoving

	| t |
	t := nil.
	c add: 42; add: 10.
	c when: DSRemoveCollectionEvent do: [ :evt | t := evt ].
	self assert: t isNil.
	c remove: 42.
	self assert: t notNil.