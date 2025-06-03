Extension { #name : 'GRPackage' }

{ #category : '*Magritte-Model' }
GRPackage class >> magritteModel [
	^ self new
		name: 'Magritte-Model';
		description: 'The Magritte metamodel.';
		addDependency: 'Grease-Core';
		url: #magritteUrl;
		yourself
]

{ #category : '*Magritte-Model' }
GRPackage >> magritteUrl [
	^ 'http://source.lukas-renggli.ch/magritte2'
]
