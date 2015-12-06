visualization
visualizeOn: view
	| ms |
	ms := self getMappings.
	ms size = 1 ifTrue: [ ^ ms first new visualize: self in: view ].

	ms do: [ :c |
		view addMenu: c name callback: [ 
			view clean.
			c new visualize: self in: view.
			view canvas focusOnCenterScaled ] ]