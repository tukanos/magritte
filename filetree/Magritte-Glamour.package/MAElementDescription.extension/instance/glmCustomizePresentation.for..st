*magritte-glamour
glmCustomizePresentation: presentation for: domainObject
	presentation hasTitle ifFalse: [ presentation title: self label ].
	presentation hasTransformation ifFalse: [ presentation display: (self accessor read: domainObject) ].
	presentation glmAddSelectionActions