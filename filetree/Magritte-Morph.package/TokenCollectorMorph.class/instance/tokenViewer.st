private-building
tokenViewer
	tokenViewer ifNotNil: [ ^ tokenViewer ].
	^ tokenViewer := Morph new
		color:
			self theme backgroundColor;
		changeTableLayout;
		vResizing: #shrinkWrap;
		hResizing: #spaceFill;
		listDirection: #leftToRight;
		wrapDirection: #topToBottom;
		cellInset: 5 @ 5;
		yourself