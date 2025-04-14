accessing
example
	<gtExample>
	^ self new
		object: { #people -> { 
			MAContainer samplePersonHarryPotter.
			MAContainer samplePersonDumbledore } } asDictionary;
		objectDescription: MACompositeAccessor sampleContainer;
		addButtons;
		element