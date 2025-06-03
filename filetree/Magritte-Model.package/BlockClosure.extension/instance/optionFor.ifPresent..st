*magritte-model
optionFor: anObject ifPresent: aBlock
	aBlock value: (self cull: anObject)