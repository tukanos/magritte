accessing
initialize
	super initialize.

	self
		beEditable;
		aptitude: MAGtInputFieldAptitude "BrGlamorousEditorAptitude + BrGlamorousInputFieldSpacingAptitude";
		geometry: (BlRoundedRectangleGeometry cornerRadius: 4);
		vFitContent;
		hMatchParent;
		text: (self builder textUsing: self elementDescription).	"BrGlamorousEditableLabelAptitude"	"BrGlamorousButtonExteriorAptitude"
		
	self initializeListeners.
	self initializeCompletion