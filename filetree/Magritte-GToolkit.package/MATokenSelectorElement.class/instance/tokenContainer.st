initialization
tokenContainer
	tokenContainer ifNotNil: [ ^ tokenContainer ].
	
	^ tokenContainer := BrHorizontalFlow new
		vFitContent;
		hMatchParent;
		yourself