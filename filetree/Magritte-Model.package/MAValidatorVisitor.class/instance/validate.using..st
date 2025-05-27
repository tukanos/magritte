private
validate: anObject using: aDescription
	aDescription validateRequired: anObject.
	anObject = aDescription undefinedValue ifTrue: [ ^ self ].
	aDescription
		tryValidation: [ aDescription validateKind: anObject ]
		ifPass: [ 
			aDescription
				validateSpecific: anObject;
				validateConditions: anObject ]
		