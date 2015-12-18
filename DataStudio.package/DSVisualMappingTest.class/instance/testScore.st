tests
testScore
	self assert: (DSGenericMapping new scoreFor: Object) equals: 1.
	self assert: (DSGenericMapping new scoreFor: String) ~= 1.
	self assert: (DSAbstractNumberMapping new scoreFor: 1 class) > (DSGenericMapping new scoreFor: 1 class)