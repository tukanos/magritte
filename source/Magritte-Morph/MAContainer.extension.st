Extension { #name : 'MAContainer' }

{ #category : '*Magritte-Morph-Converting' }
MAContainer >> asMorphOn: anObject [
	| memento |
	memento := anObject mementoClass
			model: anObject
			description: self.
	^ self morphicClass memento: memento
]

{ #category : '*Magritte-Morph' }
MAContainer class >> defaultMorphicClasses [
	^ Array with: MAMorphicContainer
]

{ #category : '*Magritte-Morph-Converting' }
MAContainer >> elementBuilderFor: anObject [
	
	self flag: 'Commented out from #asMorphOn:'.
	"memento := anObject mementoClass
			model: anObject
			description: self."
	^ self blocClass on: anObject"memento: memento"
]
