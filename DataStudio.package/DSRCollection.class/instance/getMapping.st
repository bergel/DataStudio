visualization
getMapping
	| selectedClass variableType s |
	self ifEmpty: [ ^ DSGenericMapping new ].
	
	variableType := self variableType.
	s := 0.
	selectedClass := DSGenericMapping.
	DSVisualMapping allSubclasses do: [ :cc |
		(cc new scoreFor: variableType) > s
			ifTrue: [ selectedClass := cc. s := cc new scoreFor: variableType ]
	].
	^ selectedClass new