visiting-description
visitSingleOptionDescription: aDescription

	self 
		using: aDescription
		addInputField: [ 
			MADropdownElement new 
				items: aDescription allOptions;
				itemDescription: aDescription reference;
				selection: (self memento readUsing: aDescription);
				when: MADropdownWish do: [ :aWish | 
					aDescription write: aWish selection to: self memento ];
				yourself ]