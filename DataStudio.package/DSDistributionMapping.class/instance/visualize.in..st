hooks
visualize: collection in: view

	| b lb groups groups2 ds |	
	groups := (collection groupedBy: #yourself).
	groups2 := groups associations collect: [ :assoc | assoc key -> assoc value size ].
	
	b := RTGrapher new.
	b view: view.
	ds := RTData new.
	ds points: (groups2 sortedAs: #value).
	ds y: #value.
	ds interaction popupText: [ :assoc | assoc value asString, ' times the value ', assoc key asString ].
	b add: ds.
	b axisX noTick; noLabel; title: 'group of elements'.
	b axisY title: 'Number of equal group of element'.
	b build.
	
	lb := RTLegendBuilder new.
	lb view: view.
	lb addText: 'The collections contains ', collection size asString, ' elements'.
	lb addText: groups size asString, ' elements are actually distincts.'.
	lb build.
