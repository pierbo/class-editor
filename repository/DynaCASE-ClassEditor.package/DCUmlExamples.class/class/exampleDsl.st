examples
exampleDsl
	| model diagramInterchange |
	model := self sampleDsl.
	diagramInterchange := self sampleDslDIFor: model.
	DCProject new
		projectName: 'University Model';
		addModel: model;
		layout: diagramInterchange for: model;
		open