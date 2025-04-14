*Magritte-GToolkit
blocClass
	^ self propertyAt: #blocClass ifAbsent: [ MAElementBuilder"self class defaultMorphicClass" ]