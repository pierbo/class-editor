*DynaCASE-ClassEditor-Updating
remove
	self separators select: [ :each | each view isNotNil ] thenDo: #remove.
	self figures select: [ :each | each view isNotNil ] thenDo: #remove.
	self figures do: [ :each | each owningElement: nil ].
	self compartments do: [ :each | each owningElement: nil ].
	self rtElement view ifNotNil: [ self rtElement remove ].
	view ifNotNil: [ view signalUpdate ].
	view := nil