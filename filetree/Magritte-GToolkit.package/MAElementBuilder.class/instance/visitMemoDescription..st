visiting-description
visitMemoDescription: aDescription
	| lineHeight |
	self flag: 'Lots of duplication from standard inputElement creation; line height very rough based on 14 pt size - waiting on answer on Discord'.
	lineHeight := 14 * 1.5.
	
	self 
		using: aDescription
		addInputField: [ 
			| inputElement |
			inputElement := BrEditor new
				beEditable;
				text: (self textUsing: aDescription);
				aptitude: BrGlamorousEditorAptitude new glamorousRegularFontAndSize;
				vMatchParent;
				hMatchParent.
				
			inputElement editor when: BrTextEditorModifiedEvent
					do: [ :event | aDescription writeFromString: event text greaseString to: self memento ].
					
			BlElement new
				aptitude: BrGlamorousWithVerticalResizerAptitude;
				constraintsDo: [ :c | 
					c horizontal matchParent.
					c vertical exact: lineHeight * aDescription lineCount ];
				addChild: inputElement;
				yourself ]