accessing
toolbar
	| toolbar |
	toolbar := BrToolbar new
		aptitude: BrToolbarAptitude new;
		layout:
			(BlGridLayout horizontal
				rowCount: 1;
				cellSpacing: 10);
		constraintsDo: [ :c | 
			c horizontal fitContent.
			c grid horizontal alignRight.
			c vertical fitContent ].
	self buttonSelectors
		do: [ :sel | 
			| button |
			button := BrButton new
				beSmallSize;
				aptitude: BrGlamorousButtonWithLabelAptitude;
				label: sel capitalized;
				action: [ self presenter perform: sel ].
			toolbar addItem: button ].
	^ toolbar