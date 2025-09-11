Extension { #name : 'GRPackage' }

{ #category : '*Magritte-Filedirectory' }
GRPackage class >> magritteFileDirectory [
	^ self new
		name: 'Magritte-FileDirectory';
		description: 'The file-data integration with Magritte metamodel.';
		addDependency: 'Magritte-Model';
		url: #magritteUrl;
		yourself
]
