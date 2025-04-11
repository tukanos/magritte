private
addInputFieldUsing: aDescription

	self 
		using: aDescription
		addInputField: [ :headerElement |
			(self newInputElementUsing: aDescription)
				header: headerElement;
				yourself ]