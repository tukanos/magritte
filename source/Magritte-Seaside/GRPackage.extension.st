Extension { #name : 'GRPackage' }

{ #category : '*Magritte-Seaside' }
GRPackage class >> magritteSeaside [
	^ self new
		name: 'Magritte-Seaside';
		description: 'Seaside integration for the Magritte metamodel.';
		addDependency: 'Magritte-Model';
		url: #magritteUrl;
		yourself
]