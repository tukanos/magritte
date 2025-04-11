accessing
initialize
	super initialize.
	self initializeToggleButton: self.
	self
		addAptitude:
			(BrGlamorousWithDropdownAptitude
				handle: [ | handle |
					handle := BrButton new.
					self initializeToggleButton: handle.
					handle
						label: self selectionString;
						yourself ]
				content: [ self popupList ]);
		yourself