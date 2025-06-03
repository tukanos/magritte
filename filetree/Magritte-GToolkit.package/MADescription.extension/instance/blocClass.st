*magritte-gToolkit
blocClass
	^ self propertyAt: #blocClass ifAbsent: [ MAElementBuilder"self class defaultMorphicClass" ]