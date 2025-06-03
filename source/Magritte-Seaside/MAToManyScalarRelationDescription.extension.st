Extension { #name : 'MAToManyScalarRelationDescription' }

{ #category : '*Magritte-Seaside-Accessing-Defaults' }
MAToManyScalarRelationDescription class >> defaultComponentClasses [
	^ Array with: MAOneToManyScalarComponent
]

{ #category : '*Magritte-Seaside-Accessing-Defaults' }
MAToManyScalarRelationDescription class >> defaultReportColumnClasses [
	^ Array with: MADescribedScalarColumn
]
