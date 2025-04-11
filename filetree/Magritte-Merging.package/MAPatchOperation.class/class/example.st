examples
example
	| desc |
	desc := MAContainer samplePersonDescription.
	^ MAPatchOperation for: MAContainer samplePersonHarryPotter set: desc children first to: 'Harry James Potter'