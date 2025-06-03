*magritte-developer
maAddField
	| fieldName |
	fieldName := UIManager default request: 'Field name?'.
	fieldName ifNil: [ ^ self ].
	self maAddField: fieldName asSymbol