Extension { #name : 'Collection' }

{ #category : '*Magritte-Model' }
Collection >> asMultilineString [

	^ String streamContents: [ :stream |
			  self
				  do: [ :each | stream nextPutAll: each asString ]
				  separatedBy: [ stream nextPut: Character cr ] ]
]

{ #category : '*Magritte-Model' }
Collection >> copyWithAll: aCollection [
	^ self copy
		addAll: aCollection;
		yourself
]

{ #category : '*Magritte-Model' }
Collection >> copyWithoutFirst: anObject [
	| done |
	done := false.
	^ self reject: [ :each |
		(each = anObject
			and: [ done not ])
				and: [ done := true ] ]
]

{ #category : '*Magritte-Model' }
Collection >> copyWithoutFirstOccurrenceOf: anObject [
	| done |
	done := false.
	^ self reject: [ :each |
		each = anObject
			and: [ done not
			and: [ done := true ] ] ]
]

{ #category : '*Magritte-Model-Dynopt' }
Collection >> maAllOptionsFor: aDescription [
	^ aDescription prepareOptions: self copy
]

{ #category : '*Magritte-Model' }
Collection >> maSelectMatching: aString [ 
	^ self select: [ :e | e asString startsWith: aString ]
]
