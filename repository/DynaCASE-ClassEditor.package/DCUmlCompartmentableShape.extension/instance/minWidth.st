*DynaCASE-ClassEditor-Accessing
minWidth
	^ 500 max: (self ownedElements ifEmpty: [ 0 ] ifNotEmpty: [ :f | f max: #minWidth ])