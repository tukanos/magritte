Extension { #name : 'AbstractDictionary' }

{ #category : '*Magritte-Gemstone-Model' }
AbstractDictionary >> optionFor: anObject ifPresent: aBlock [
	self at: anObject ifPresent: aBlock

]
