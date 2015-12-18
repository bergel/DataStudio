hooks
visualize: collection in: view
	| b ds |
	b := RTGrapher new.
	b view: view.
	ds := RTData new.
	ds points: collection.
	b add: ds.
	b build