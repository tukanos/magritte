private
setDefiningContextOf: aDescription to: aSelector in: aClass
	| aSource |
	aDescription ifNil: [ ^ nil ].
	
	aSource := MADescriptionContext new
		modelClass: aClass;
		methodSelector: aSelector.
	
	aDescription definingContext: aSource.