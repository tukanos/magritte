Extension { #name : 'GRPackage' }

{ #category : '*Magritte-Tests-Files-Model' }
GRPackage class >> magritteTestsFilesModel [
	^ self new
		name: 'Magritte-Tests-Files-Model';
		addDependency: 'Magritte-Tests-Model';
		url: #magritteUrl;
		yourself
]
