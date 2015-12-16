hooks
execute
	| int |
	int := RTSelectableView new.
	self roassalView @ int.
	int when: RTSelectionEnd do: [ :evt | 
		"The call of asDSColl is a hook for DataStudio"
		roassalPresentation selection: (evt group collect: #model) asDSColl ].