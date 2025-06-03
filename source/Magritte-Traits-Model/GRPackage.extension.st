Extension { #name : 'GRPackage' }

{ #category : '*Magritte-Traits-Model' }
GRPackage class >> magritteTraitsModel [
	^ self new
		name: 'Magritte-Traits-Model';
		addDependency: 'Magritte-Model';
		url: #magritteUrl;
		yourself
]
