as yet unclassified
visualize: collection in: view

	| b ds |
	b := RTGrapher new.
	b view: view.
	ds := RTData new.
	ds points: collection.
	ds x: #x.
	ds y: #y.
	b add: ds.
	b build