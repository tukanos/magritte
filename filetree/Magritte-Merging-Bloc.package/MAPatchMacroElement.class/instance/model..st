accessing
model: macro
	model := macro.
	
	expander header: [
		| label  button |
		label := BrButton new
			action: [ expander toggleExpanded ];
			aptitude: BrGlamorousButtonWithLabelAptitude;
			label: self model printString.
		button := BrButton new
				beSmallSize;
				aptitude: BrGlamorousButtonWithLabelAptitude;
				label: 'Apply';
				action: [ self model execute ].
		BlElement new
			"aptitude: BrGlamorousAccordionHeaderAptitude new;"
			layout: (BlLinearLayout horizontal cellSpacing: 10);
			constraintsDo: [ :c | 
				c horizontal fitContent.
				c vertical fitContent ];
			addChild: label;
			addChild: button;
			yourself ].
	
	expander content: [ 
		| content | 
		content := BlElement new
			layout: (BlLinearLayout vertical cellSpacing: 10);
			constraintsDo: [ :c | 
				c horizontal fitContent.
				c vertical fitContent ].
		self model operations do: [ :op | content addChild: op asElement ].
		content ].