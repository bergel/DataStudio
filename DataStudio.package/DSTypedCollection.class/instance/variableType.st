accessing - computed
variableType
	"Return the most common type of all the value I contain"
	self assert: [ self notEmpty ] description: 'Cannot get the type for empty value evolution'.
	^ self allButFirst inject: self first class into: [ :mostCommonType :v | 
		(v class inheritsFrom: mostCommonType)
			ifTrue: [ mostCommonType ]
			ifFalse: [ 
				self firstCommonSupertypeOf: v class and: mostCommonType
						]  ].
	