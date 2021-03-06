*DynaCASE-ClassEditor-Updating
updateSeparators
	| x y |
	self separators
		select: [ :each | each view isNil ]
		thenDo: [ :each | each renderIn: view ].
	x := self encompassingRectangle left.
	y := self labels last encompassingRectangle bottom.
	self compartments
		do:
			[ :each | 
			each ownedElements
				ifEmpty: [ each rtElement shape path: 'L 0 0' ]
				ifNotEmpty: [ each rtElement shape path: 'L ' , self width asString , ' 0' ].
			each rtElement translateTo: x @ y.
			each rtElement update.
			each ownedElements
				ifNotEmpty: [ y := each ownedElements last encompassingRectangle bottom ] ].
	view signalUpdate