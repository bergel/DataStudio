visualization
visualizeOn: view
	| ms mb |
	view @ RTFindInAView.
	ms := self getMappings.
	ms size = 1 ifTrue: [ ^ ms first new doVisualize: self in: view ].

	mb := RTMenuBuilder new 
				view: view; 
				yourself. 
	ms do: [ :c |
		mb menu: 'Views' submenu: c mappingName background: (Color red trans) callback: [ 
			view clean.
			c new doVisualize: self filteredCollection in: view.
			view canvas focusOnCenterScaled.
			view signalUpdate ] ]