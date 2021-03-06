visitor
visitOwnedEnd: aProperty
	| attrs |
	self visitMemberEnd: aProperty.
	attrs := Dictionary
		with: #xmi:type -> 'uml:Property'
		with: #xmi:id -> aProperty uuid asString
		with: #association -> aProperty association uuid asString
		with: #isOrdered -> 'true'.
	aProperty aggregation = #none
		ifFalse: [ attrs at: #aggregation put: aProperty aggregation ].
	(aProperty name isNotNil and: [ aProperty name isNotEmpty ])
		ifTrue: [ attrs at: #name put: aProperty name ].
	writer
		tag: #ownedEnd
		attributes: attrs
		with: [ self visitType: aProperty declaredType.
			self visitMultiplicity: aProperty multiplicity ]