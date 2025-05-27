accessing
element
	| hasVisited |
	element ifNotNil: [ ^ element ].
	hasVisited := form isNotNil.
	hasVisited ifFalse: [ self visit: self objectDescription ].
	element := BrVerticalPane new
		vFitContent;
		hMatchParent;
		addChild: self form;
		yourself.
	element userData at: #magrittePresenter put: self presenter.
	self hasButtons ifTrue: [ element addChild: self toolbar ].
	^ element