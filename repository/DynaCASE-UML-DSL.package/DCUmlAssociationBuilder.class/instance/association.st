accessing
association
	^ super association
		==>
			[ :nodes | 
			| assoc |
			assoc := DCFAMIXBinaryAssociation
				source: (FAMIXClass named: nodes first first)
				target: (FAMIXClass named: nodes third first).
			assoc name: nodes fourth.
			assoc instVarNamed: #sourceEnd put: nodes first second.
			assoc instVarNamed: #targetEnd put: nodes third second.
			nodes first second association: assoc.
			nodes third second association: assoc.
			assoc ]