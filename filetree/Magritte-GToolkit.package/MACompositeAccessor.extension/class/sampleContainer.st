*magritte-gToolkit
sampleContainer
	
	| desc |
	desc := MAContainer samplePersonDescription
		blocClass: MACompositeElementBuilder;
		yourself.
	desc children do: [ :e | 
		| acc prefixAccessor |
		prefixAccessor := MADictionaryAccessor key: #people.
		acc := MACompositeAccessor via: prefixAccessor using: e ].
	^ desc