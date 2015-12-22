as yet unclassified
visualize: collection in: view
	| b ds |
	b := RTGrapher new.
	b view: view.
	ds := RTHistogramSet new.
	ds points: collection.
	ds barShape width: 20.
	ds x: #yourself.
	
	ds barChartWithBarTitle: [:ar | 
		ar second isEmpty 
			ifTrue: ['[:]']
			ifFalse: ['[', (ar second first isNumber ifTrue: [ar second first floor] ifFalse: [ar second first]) asString,':', (ar second last isNumber ifTrue: [ar second last ceiling] ifFalse: [ar second last]) asString,']']
			].
			
	b add: ds. 
	b axisX title: 'Values'.
	b axisY title: 'Frequency'.
	b build