test-events
testEventAdding

	| t |
	t := nil.
	c when: DSAddCollectionEvent do: [ :evt | t := evt ].
	self assert: t isNil.
	c add: 42.
	self assert: t notNil.