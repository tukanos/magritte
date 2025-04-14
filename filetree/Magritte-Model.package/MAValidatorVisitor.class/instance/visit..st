visiting
visit: aDescription
	"Only visit objects that are visible and that can be changed."
	
	| errors |
	(aDescription isVisible and: [ aDescription isReadOnly not ])
		ifFalse: [ ^ self ].

	errors := OrderedCollection new.
	[ 
		super visit: aDescription
	]
		on: MAValidationError
		do: [ :err | 
			errors add: err. 
			err resume ].
		
	errors isEmpty ifFalse: [
		MAMultipleErrors
			description: aDescription 
			errors: errors
			signal: aDescription label ]