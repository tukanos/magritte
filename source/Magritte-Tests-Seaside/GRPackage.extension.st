Extension { #name : 'GRPackage' }

{ #category : '*Magritte-Tests-Seaside' }
GRPackage class >> magritteTestsSeaside [
	^ self new
		name: 'Magritte-Tests-Seaside';
		description: 'Unit tests for Seaside integration with Magritte metamodel.';
		addDependency: 'Magritte-Seaside';
		url: #magritteUrl;
		yourself
]
