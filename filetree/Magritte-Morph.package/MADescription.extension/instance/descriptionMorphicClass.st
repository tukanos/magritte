*magritte-morph-accessing
descriptionMorphicClass
	<magritteDescription>
	^ MASingleOptionDescription new
		accessor: #morphicClass;
		label: 'Morph Class';
		priority: 2000;
		reference: MAClassDescription new;
		options: self class defaultMorphicClasses;
		default: self class defaultMorphicClass;
		yourself