visiting-description
visitDateDescription: aDescription

	self 
		using: aDescription 
		addInputField: [ :headerElement |
			| editor calendarButton |
			editor := (self newInputElementUsing: aDescription)
				header: headerElement;
				yourself.
			editor constraintsDo: [ :c |
				c minWidth: 100 ].
			calendarButton := self calendarButtonFor: editor.
			BrHorizontalPane new
					fitContent;
					cellSpacing: 5;
					addChild: editor;
					addChild: calendarButton;
					yourself ]