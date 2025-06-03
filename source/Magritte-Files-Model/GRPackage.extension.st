Extension { #name : 'GRPackage' }

{ #category : '*Magritte-Files-Model' }
GRPackage class >> magritteFilesModel [
	^ self new
		name: 'Magritte-Files-Model';
		addDependency: 'Magritte-Model';
		url: #magritteUrl;
		yourself
]
