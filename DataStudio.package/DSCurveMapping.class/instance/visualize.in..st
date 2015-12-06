as yet unclassified
visualize: collection in: view

	| b ds |
	b := RTGrapher new.
	b view: view.
	ds := RTData new.
	ds dotShape color: Color blue trans.
	ds points: collection.
	ds x: self metrics first.
	ds y: self metrics second.
	b add: ds.
	b build