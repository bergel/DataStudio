as yet unclassified
simpleCollection
	<gtExample>
	^ #(-2 1 2 3 3 8 7 2 -6) asDSColl.
"
{2 @ 3 . 5 @ 3 . -4 @ -2 . -4 @ 2} asDSColl.
(RTShape withAllSubclasses collect: [ :c | c numberOfVariables @ c numberOfMethods ])asDSColl"