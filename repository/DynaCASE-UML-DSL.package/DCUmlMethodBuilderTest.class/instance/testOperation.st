tests
testOperation
	self parse: 'op()' rule: #operation.
	self assert: result class equals: FAMIXMethod.
	self deny: result isStatic.
	self deny: result isAbstract.
	self assert: result name equals: 'op'.
	self assert: result parameters size equals: 0.
	self assert: result declaredType equals: nil