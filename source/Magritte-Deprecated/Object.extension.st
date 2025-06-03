Extension { #name : 'Object' }

{ #category : '*Magritte-Deprecated' }
Object class >> description [
	self greaseDeprecatedApi: 'Object class>>#description' details: '#description has been renamed to #magritteDescription as #description is a heavily overloaded term.'. 
	
	^ self magritteDescription
]

{ #category : '*Magritte-Deprecated' }
Object >> description [
	self greaseDeprecatedApi: 'Object>>#description' details: '#description has been renamed to #magritteDescription as #description is a heavily overloaded term.'. 

	^ self magritteDescription
]
