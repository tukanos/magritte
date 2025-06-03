Extension { #name : 'GRPackage' }

{ #category : '*Magritte-Pharo-Model' }
GRPackage class >> magrittePharoModel [
	^ self new
		name: 'Magritte-Pharo-Model';
		addDependency: 'Magritte-Model';
		url: #magritteUrl;
		yourself
]
