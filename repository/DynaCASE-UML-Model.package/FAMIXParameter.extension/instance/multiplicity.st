*DynaCASE-UML-Model
multiplicity
	<MSEProperty: #multiplicity type: #DCFAMIXMultiplicity>
	<MSEComment: 'A multiplicity of the attribute'>
	^ self privateState propertyAt: #multiplicity ifAbsentPut: [ DCFAMIXMultiplicity new ]