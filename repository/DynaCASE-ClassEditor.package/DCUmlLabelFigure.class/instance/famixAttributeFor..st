*DynaCASE-ClassEditor-FAMIX
famixAttributeFor: anAttribute
	^ anAttribute name
		,
			(anAttribute hasDeclaredType
				ifTrue:
					[ ' : ' , anAttribute declaredType name , anAttribute multiplicity asOptionalString ]
				ifFalse: [ '' ])