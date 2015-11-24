test-events
testEventAddingAll

	| t |
	t := 0.
	c when: DSAddCollectionEvent do: [ :evt | t := t + 1 ].
	c when: DSAddAllCollectionEvent do: [ :evt | t := t + 10 ].
	c add: 42.
	self assert: t equals: 1.
	c addAll: #(5 6).
	self assert: t equals: 11.