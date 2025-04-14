decorating
addWindow

	| scrollPane newMorph |
	newMorph := self morph
		            vResizing: #spaceFill;
		            hResizing: #spaceFill.
	scrollPane := UIManager default newScrollPaneFor: newMorph.
	scrollPane changeScrollerTableLayout.

	morph := self windowMorph
		         model: self;
		         vResizing: #shrinkWrap;
		         addMorph: (scrollPane layoutInset: 5 @ 5)
		         frame: (0 @ 0 corner: 1 @ 1);
		         yourself