accessing
reference
	reference ifNil: [ reference := self class defaultReference ].
	^ reference
		display: self displayBlockOrSymbol;
		yourself