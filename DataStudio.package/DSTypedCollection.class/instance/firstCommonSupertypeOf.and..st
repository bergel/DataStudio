utility
firstCommonSupertypeOf: type1 and: type2

	| v1 v2 maxSize vv1 vv2 |
	v1 := 	type1 withAllSuperclasses.
	v2 := 	type2 withAllSuperclasses.
	
	maxSize := v1 size max: v2 size.
	vv1 := v1, ((1 to: (maxSize - v1 size)) collect: [ :i | ProtoObject ]).
	vv2 := v2, ((1 to: (maxSize - v2 size)) collect: [ :i | ProtoObject ]).

	vv1 do: [ :vvv1 | (vv2 includes: vvv1) ifTrue: [ ^ vvv1 ] ].	
	self error: 'No common supertype found'