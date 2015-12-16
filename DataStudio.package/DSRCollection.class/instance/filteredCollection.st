visualization
filteredCollection
	"Make sure the collection is not too big"
	self size > 10000 ifTrue: [ ^ self copyFrom: 1 to: 10000 ].
	^ self