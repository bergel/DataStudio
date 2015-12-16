public
scoreFor: aClass
	| ss |
	ss := aClass withAllSuperclasses.
	^ (ss includes: self typeToConsider)
		ifTrue: [ 1 / (ss indexOf: self typeToConsider) ]
		ifFalse: [ 0 ]