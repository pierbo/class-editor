tests
testCreateAttribute
	model := FAMIXAttribute named: 'string' type: (FAMIXClass named: 'String').
	generator createAttributeFor: model in: cls.
	self assert: cls instVarNames equals: #(#string).
	self assert: cls classVarNames equals: #()