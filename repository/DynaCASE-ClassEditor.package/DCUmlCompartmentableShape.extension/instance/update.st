*DynaCASE-ClassEditor-Updating
update
	view ifNil: [ ^ self ].
	self rtElement update.
	self figures select: [ :each | each view isNil ] thenDo: [ :each | each renderIn: view ].
	self layout.
	self updateSeparators.