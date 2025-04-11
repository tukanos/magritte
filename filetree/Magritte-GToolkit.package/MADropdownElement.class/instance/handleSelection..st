accessing
handleSelection: anElement
	| selItem |
	"Must check self and parent(s) because target can be label or its text"
	selItem := anElement
		withAllParentsDetect: [ :e | e userData includesKey: #item ]
		ifFound: [ :e | e userData at: #item ]
		ifNone: [ nil ].
	self selection: selItem.
	anElement fireEvent: BrDropdownHideWish new