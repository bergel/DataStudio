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
	b axisX noTick; noLabel; title: 'Cluster of equal elements'.
	b axisY title: 'Cluster size'.
	b build.
	
	lb := RTLegendBuilder new.
	lb view: view.
	lb addText: 'The collections contains ', collection size asString, ' elements'.
	lb addText: 'It contains ', groups size asString, ' clusters of equal elements'.
	groups size = collection size ifTrue: [ lb addText: 'All elements are differents' ].
	lb build.
