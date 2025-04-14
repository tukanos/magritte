instance creation
via: anAccessor using: aDescription
	| result |
	result := (self on: aDescription accessor asAccessor accessor: anAccessor asAccessor)
		kind: aDescription kind;
		yourself.
	aDescription hasLabel ifTrue: [ aDescription label: (result accessor defaultLabelFor: aDescription) , '::' , aDescription label ].
	aDescription accessor: result.
	^ result