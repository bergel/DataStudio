as yet unclassified
visualize: collection in: view

	| b |
	b := RTMondrian new.
	b view: view.
	b nodes: collection.
	b layout grid.
	b build