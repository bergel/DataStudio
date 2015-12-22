*DataStudio-Watchpoint
gtInspectorViewIn: composite
	<gtInspectorPresentationOrder: -10>
	composite roassal2
		title: 'View';
		initializeView: [ | v |
			v := RTView new.
			(self values collect: #value) asDSColl visualizeOn: v.
			v
		]