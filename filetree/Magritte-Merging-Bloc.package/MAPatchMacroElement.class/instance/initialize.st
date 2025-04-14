accessing
initialize
	super initialize.
	
	"Adapted from GtRefactoringsElement"
	self 
		layout: BlFrameLayout new;
		constraintsDo: [ :c | 
				c horizontal matchParent.
				c vertical fitContent ].
	
	expander := BrExpander new
		hMatchParent;
		vFitContent;
		aptitude: (GtCoderExpanderAptitude new
			padding: BlInsets empty;
			doNotReplaceHeader) + (BrStyleCommonAptitude new
				expanded: [ :aStyle |
					aStyle margin: (BlInsets top: 5 left: 5 bottom: 5 right: 5) ];
				collapsed: [ :aStyle |
					aStyle margin: (BlInsets top: 5 left: 5 bottom: 0 right: 5) ]);
		yourself.
	
	self addChild: expander.
	^ self