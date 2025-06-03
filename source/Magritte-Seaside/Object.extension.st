Extension { #name : 'Object' }

{ #category : '*Magritte-Seaside-Converting' }
Object >> asComponent [
	^ self magritteDescription asComponentOn: self
]
