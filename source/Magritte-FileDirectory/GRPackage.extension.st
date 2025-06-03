Extension { #name : 'GRPackage' }

{ #category : '*Magritte-Filedirectory' }
GRPackage class >> magritteFileDirectory [
	^ self new
		name: 'Magritte-FileDirectory';
		addDependency: 'Magritte-Files-Model';
		url: #magritteUrl;
		yourself
]
