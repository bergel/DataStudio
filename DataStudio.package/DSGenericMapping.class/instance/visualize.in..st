hooks
visualize: collection in: view

	| b lb |
	b := RTMondrian new.
	b view: view.
	b nodes: collection.
	b layout grid gapSize: 1.
	b normalizer distinctColor.
	b build.
	
	lb := RTLegendBuilder new.
	lb view: view.
	lb onDemand.
	lb addText: 'Each element is associated to a color'.
	lb addText: 'Elements are ordered from left to right, up to bottom'.
	lb build.