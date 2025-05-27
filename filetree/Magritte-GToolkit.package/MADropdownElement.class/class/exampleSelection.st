accessing
exampleSelection
	<gtExample>
	| result |
	result := self example.
	result selection: result items first.
	^ result