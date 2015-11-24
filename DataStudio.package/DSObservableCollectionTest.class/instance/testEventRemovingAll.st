test-events
testEventRemovingAll

	| t |
	t := 0.
	c addAll: #(4 5 6 7).
	self assert: c size equals: 4.
	c when: DSRemoveCollectionEvent do: [ :evt | t := t + 1 ].
	c when: DSRemoveAllCollectionEvent do: [ :evt | t := t + 10 ].
	c removeAll: #(4 5 6).
	self assert: c size equals: 1.
	self assert: t equals: 10.