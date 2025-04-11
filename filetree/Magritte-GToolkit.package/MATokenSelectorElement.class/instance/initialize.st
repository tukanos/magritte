initialization
initialize
	| searchButton |
	super initialize.

	self
		hMatchParent;
		padding: (BlInsets top: 4 bottom: 4);
		alignCenterLeft;
		cellSpacing: 5;
		vFitContent.

	searchButton := GtSpotterDropdownButtonStencil new
			valuable: [ self relationDescription gtSearchSource value ];
			icon: BrGlamorousVectorIcons search;
			actOn: [ :anActOnEvent :anItem :theButton |
				| result spottedObject |
				spottedObject := anActOnEvent objectToSend.
				result := self relationDescription gtSearchTransform 
					"cull: self object - we want to pass the object too, but sometimes we get a memento"
					value: spottedObject.
				self onTokenRequestFor: result.
				anActOnEvent beActed ];
			create.

	self refreshTokens.

	self
		addChild: searchButton;
		addChild: self tokenContainer