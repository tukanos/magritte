Extension { #name : 'Symbol' }

{ #category : '*Magritte-Deprecated' }
Symbol >> isDescriptionDefinition [
	"Answer wheter the receiver is a method selector following the naming conventions of a description definition."

	^ self isDescriptionSelector
		and: [ self isUnary ]
]

{ #category : '*Magritte-Deprecated' }
Symbol >> isDescriptionExtension: aSelector [
	"Answer wheter the receiver is a method selector following the naming conventions of a description extension to aSelector."

	^ self isDescriptionSelector
		and: [ self numArgs = 1
		and: [ self beginsWith: aSelector ] ]
]

{ #category : '*Magritte-Deprecated' }
Symbol >> isDescriptionSelector [
	"Answer wheter the receiver is a method selector following the naming conventions of a  description selector."

	^ self ~= #description
		and: [ self beginsWith: #description ]
]
