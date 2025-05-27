accessing
visitSingleOptionDescription: aDescription
	
	self flag: 'lots of duplication with super implementation'.
	
	self 
		using: aDescription
		addInputField: [ 
			| items |
			items := aDescription allOptions copyWith: MACompositeConflict new; yourself.
			MADropdownElement new 
				items: items;
				itemDescription: aDescription reference;
				selection: (aDescription read: self memento);
				when: MADropdownWish do: [ :aWish | 
					aWish selection = MACompositeConflict new ifFalse: [ aDescription write: aWish selection to: self memento ] ];
				yourself ] 