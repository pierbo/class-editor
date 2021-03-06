ui hooks
initializePaletteWithShortcuts: aPalette
	(aPalette newCreationTool: [ DCUmlClassController new ])
		label: 'Class';
		shortcut: $c asShortcut;
		icon: DCUmlIcons current classIcon.
	(aPalette newConnectionCreationTool: [ DCUmlInheritanceController new ])
		label: 'Generalization';
		shortcut: $g asShortcut;
		icon: DCUmlIcons current generalizationIcon.
	(aPalette newConnectionCreationTool: [ DCUmlAssociationController new ])
		label: 'Association';
		shortcut: $a asShortcut;
		icon: DCUmlIcons current associationIcon