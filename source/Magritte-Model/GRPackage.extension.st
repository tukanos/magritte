Extension { #name : 'GRPackage' }

{ #category : '*Magritte-Model' }
GRPackage class >> magritteModel [
	^ self new
		name: 'Magritte-Model';
		description: 'Magritte metamodel.';
		addDependency: 'Grease-Core';
		url: #magritteUrl;
		yourself
]

{ #category : '*Magritte-Model' }
GRPackage >> magritteUrl [
	"The original source: 'http://source.lukas-renggli.ch/magritte2'"
	^ 'https://github.com/magritte-metamodel/magritte'
]
