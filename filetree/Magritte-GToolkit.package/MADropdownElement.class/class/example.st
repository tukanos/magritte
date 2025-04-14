accessing
example
	<gtExample>
	^ self new
		items: (Smalltalk allClasses first: 5);
		yourself.