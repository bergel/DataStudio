visualization
getMappings
	| variableType |
	self ifEmpty: [ ^ DSGenericMapping new ].
	variableType := self variableType.
	^ self candidateMappingClasses
		select: [ :cc | (cc new scoreFor: variableType) > 0 ]