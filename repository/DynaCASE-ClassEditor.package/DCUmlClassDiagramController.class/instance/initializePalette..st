ui hooks
initializePalette: aPalette
	(aPalette newCreationEntry: [ DCUmlClassController new ])
		label: 'Class';
		icon: DCUmlIcons current classIcon;
		whenCompletedRename.
	(aPalette newCreationEntry: [ DCUmlAttributeController new ])
		label: 'Attribute';
		icon: Smalltalk ui theme icons abstractIcon;
		whenCompletedRename.
	(aPalette newCreationEntry: [ DCUmlMethodController new ])
		label: 'Method';
		icon: Smalltalk ui theme icons blankIcon;
		whenCompletedRename.
	(aPalette newConnectionCreationTool: [ DCUmlInheritanceController new ])
		label: 'Inheritance';
		icon: DCUmlIcons current generalizationIcon.
	(aPalette newConnectionCreationTool: [ DCUmlAssociationController new ])
		label: 'Association';
		icon: DCUmlIcons current associationIcon