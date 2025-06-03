Extension { #name : 'GRPackage' }

{ #category : '*Magritte-Morph' }
GRPackage class >> magritteMorph [
	^ self new
		name: 'Magritte-Morph';
		description: 'Morphic integration for the Magritte metamodel.';
		addDependency: 'Magritte-Model';
		url: #magritteUrl;
		yourself
]
