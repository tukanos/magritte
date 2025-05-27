accessing
selection: anObject
	selection := anObject.
	self label: self selectionString.
	self dispatchEvent: (MADropdownWish new selection: self selection)