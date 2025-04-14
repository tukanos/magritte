transforming
privateTransform
	| parseTree |
	parseTree := class parseTreeFor: #description.
	parseTree selector: #magritteDescription.
	class compile: (parseTree formattedCode) classified: 'acessing-magritte'.
	class removeMethod: #description.