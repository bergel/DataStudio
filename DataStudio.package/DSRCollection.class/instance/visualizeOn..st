visualization
visualizeOn: view
	| b |
	b := RTMondrian new.
	b view: view.
	b nodes: self.
	b layout grid.
	b build