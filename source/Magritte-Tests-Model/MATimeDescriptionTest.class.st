Class {
	#name : 'MATimeDescriptionTest',
	#superclass : 'MAMagnitudeDescriptionTest',
	#category : 'Magritte-Tests-Model-Description'
}

{ #category : 'testing' }
MATimeDescriptionTest class >> isAbstract [
	^ false
]

{ #category : 'private' }
MATimeDescriptionTest >> actualClass [
	^ MATimeDescription
]

{ #category : 'private' }
MATimeDescriptionTest >> excludedInstance [
	^ Time hour: 9 minute: 33 second: 12
]

{ #category : 'private' }
MATimeDescriptionTest >> includedInstance [
	^ Time hour: 11 minute: 33 second: 12
]

{ #category : 'private' }
MATimeDescriptionTest >> maxInstance [
	^ Time hour: 12 minute: 33 second: 12
]

{ #category : 'private' }
MATimeDescriptionTest >> minInstance [
	^ Time hour: 10 minute: 33 second: 12
]

{ #category : 'tests' }
MATimeDescriptionTest >> testDisplay [

	self testDisplay: [ :e | e hour asString ].
	self testDisplay: #print24.
]
{ #category : 'private' }
MATimeDescriptionTest >> nonIdenticalInstance [
	"Time in GemStone is an immediate type; in Pharo it is a Duration wrapped in a Time.
	The only way to have non-identical instance in GemStone is to change it e.g. use maxInstance"
	(Smalltalk includesKey: #GsSession)
		ifTrue: [ self deny: self maxInstance equals: super nonIdenticalInstance.
					^ self maxInstance ]
		ifFalse: [ ^ super nonIdenticalInstance ]
]