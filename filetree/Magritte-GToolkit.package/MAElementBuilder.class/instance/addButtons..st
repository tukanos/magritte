accessing
addButtons: aCollection
	"#addButtons: is part of the existing Morphic/Seaside API"
	self flag: 'The comment said "We store the selectors instead of constructing the buttons to defer all element creation to first element access", but does that really make sense because the form and toolbar are created on visit?'.
	self buttonSelectors: aCollection