hooks
createModel
	^ self model
		ifNil: [ self modelClass uniqueNameIn: self diagramController model ]