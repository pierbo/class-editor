accessing
opposite
	<MSEProperty: #opposite type: #DCFAMIXProperty>
	<MSEComment: 'Retrieve the opposite association end.'>
	^ self association associationEnds detect: [ :each | each ~= self ]