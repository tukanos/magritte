*magritte-morph
morphicClass
	^ self propertyAt: #morphicClass ifAbsent: [ self class defaultMorphicClass ]