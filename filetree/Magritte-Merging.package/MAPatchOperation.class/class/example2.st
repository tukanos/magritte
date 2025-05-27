examples
example2
	| desc |
	desc := MAContainer samplePersonDescription.
	^ MAPatchOperation for: MAContainer samplePersonHarryPotter set: desc children second to: 'Godric''s Hollow, England'