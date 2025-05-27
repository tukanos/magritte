*Magritte-Morph
morphicClass
	^ self propertyAt: #morphicClass ifAbsent: [ self class defaultMorphicClass ]