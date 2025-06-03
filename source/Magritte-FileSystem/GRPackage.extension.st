Extension { #name : 'GRPackage' }

{ #category : '*Magritte-Filesystem' }
GRPackage class >> magritteFileSystem [
	^ self new
		name: 'Magritte-FileSystem';
		addDependency: 'Magritte-Files-Model';
		url: #magritteUrl;
		yourself
]
