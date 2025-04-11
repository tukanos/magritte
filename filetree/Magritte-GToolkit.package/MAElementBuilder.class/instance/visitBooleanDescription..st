visiting-description
visitBooleanDescription: aDescription

	self 
		using: aDescription
		addInputField: [ 
			BrCheckbox new 
				aptitude: BrGlamorousCheckboxAptitude;
				checked: (aDescription read: self memento);
				whenCheckedDo: [ aDescription write: true to: self memento ];
				whenUncheckedDo: [ aDescription write: false to: self memento ] ]