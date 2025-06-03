Class {
	#name : 'MACompositeConflict',
	#superclass : 'MAObject',
	#instVars : [
		'kind',
		'string'
	],
	#category : 'Magritte-Model-Conflict'
}

{ #category : 'comparing' }
MACompositeConflict >> = rhs [
	^ self species = rhs species
]

{ #category : 'accessing' }
MACompositeConflict >> doesNotUnderstand: aMessage [
	^ (self kind canUnderstand: aMessage selector)
		ifTrue: [ self string ]
		ifFalse: [ super doesNotUnderstand: aMessage ]
]

{ #category : 'comparing' }
MACompositeConflict >> hash [
	^ self species hash
]

{ #category : 'validation-private' }
MACompositeConflict >> validateKind: aClass [
	"Validate ==aClass== to be of the right kind."
	((self isKindOf: aClass) or: [ self kind = aClass ])
		ifFalse: [ MAKindError description: self signal: self kindErrorMessage ]
]

{ #category : 'accessing' }
MACompositeConflict >> kind [
	^ kind
]

{ #category : 'accessing' }
MACompositeConflict >> kind: aClass [
	kind := aClass
]

{ #category : 'printing' }
MACompositeConflict >> printOn: aStream [
	aStream nextPutAll: self string
]

{ #category : 'accessing' }
MACompositeConflict >> string [
	^ string ifNil: [ '(Multiple values)' ]
]

{ #category : 'accessing' }
MACompositeConflict >> string: aString [
	string := aString
]

{ #category : 'accessing-messages' }
MACompositeConflict >> kindErrorMessage [
	^ self propertyAt: #kindErrorMessage ifAbsent: [ 'Invalid input given' ]
]

{ #category : 'accessing-messages' }
MACompositeConflict >> kindErrorMessage: aString [
	self propertyAt: #kindErrorMessage put: aString
]