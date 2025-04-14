private-building
textInput

	textInput ifNotNil: [ ^ textInput ].
	textInput := SpTextInputFieldPresenter new
		             entryCompletion: self entryCompletion;
		             whenSubmitDo: [ :text | self accept: text ];
		             build.
	textInput
		vResizing: #rigid;
		height: textInput textFont height + (textInput borderWidth * 2).
	^ textInput