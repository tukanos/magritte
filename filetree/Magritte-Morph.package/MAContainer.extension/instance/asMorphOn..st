*magritte-morph-converting
asMorphOn: anObject
	| memento |
	memento := anObject mementoClass
			model: anObject
			description: self.
	^ self morphicClass memento: memento