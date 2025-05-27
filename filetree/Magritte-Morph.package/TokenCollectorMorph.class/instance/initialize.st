initialization
initialize

	| scrollPane |
	super initialize.
	self
		changeTableLayout;
		color: Color transparent.
	self addMorphBack: self textInput.
	scrollPane := (UIManager default newScrollPaneFor: self tokenViewer)
		              changeScrollerTableLayout;
		              hResizing: #spaceFill;
		              vResizing: #spaceFill;
		              yourself.
	self addMorphBack: scrollPane