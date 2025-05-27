accessing
form
	| headerStancil |
	form ifNotNil: [ ^ form ].
	headerStancil := [ :string | 
		BrLabel new 
			text: string asRopedText bold;
			aptitude: BrGlamorousLabelAptitude;
			yourself ].
	^ form := "BlElement"BrVerticalPane new
		constraintsDo: [ :c |  
			c vertical fitContent.
			c horizontal matchParent ]";
		layout: (BlGridLayout horizontal columnCount: 2; cellSpacing: 10)"";
		addChild: (headerStancil value: 'Field');
		addChild: (headerStancil value: 'Current');"
		"addChild: (headerStancil value: 'Original');"
 	yourself.