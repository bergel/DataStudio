as yet unclassified
visualize: collection in: view

	| b |
	b := RTUMLClassBuilder new.
	b view: view.
   b instanceVariables: #instVarNames.
   b methodselector: #selector.
	b methodsNames: #rtmethods.
   b attributeselector: #yourself.

	b lineShape line.

	b addObjects: collection.
	b layout tree.

	b build.
