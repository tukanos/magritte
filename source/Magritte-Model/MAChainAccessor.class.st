"
I am an access strategy used to chain two access strategies. To read and write a value the ==accessor== is performed on the given model and the result is passed into the ==next== accessor.
"
Class {
	#name : 'MAChainAccessor',
	#superclass : 'MADelegatorAccessor',
	#instVars : [
		'accessor'
	],
	#category : 'Magritte-Model-Accessor'
}

{ #category : 'instance creation' }
MAChainAccessor class >> accessors: aSequenceableCollection [
	aSequenceableCollection isEmpty
		ifTrue: [ self error: 'Unable to create accessor sequence from empty collection.' ].
	aSequenceableCollection size = 1
		ifTrue: [ ^ aSequenceableCollection first asAccessor ].
	^ self 
		on: (self accessors: aSequenceableCollection allButFirst)
		accessor: aSequenceableCollection first asAccessor
]

{ #category : 'instance creation' }
MAChainAccessor class >> on: anAccessor accessor: anotherAccessor [
	^ (self on: anAccessor) accessor: anotherAccessor
]

{ #category : 'comparing' }
MAChainAccessor >> = anObject [
	^ super = anObject and: [ self accessor = anObject accessor ]
]

{ #category : 'accessing' }
MAChainAccessor >> accessor [
	^ accessor
]

{ #category : 'accessing' }
MAChainAccessor >> accessor: anAccessor [
	accessor := anAccessor
]

{ #category : 'testing' }
MAChainAccessor >> canRead: aModel [
	^ (self accessor canRead: aModel) and: [ self next canRead: (self accessor read: aModel) ]
]

{ #category : 'testing' }
MAChainAccessor >> canWrite: aModel [
	^ (self accessor canRead: aModel) and: [ self next canWrite: (self accessor read: aModel) ]
]

{ #category : 'accessing' }
MAChainAccessor >> defaultLabelFor: aDescription [
	^ (self accessor defaultLabelFor: aDescription), '::', (super defaultLabelFor: aDescription)
]

{ #category : 'accessing-magritte' }
MAChainAccessor >> descriptionAccessor [
	<magritteDescription>
	^ MAToOneRelationDescription new
			reference: MAStringDescription new;
			accessor: #accessor;
			classes: MAAccessor allSubclasses;
			priority: 200;
			yourself
]

{ #category : 'comparing' }
MAChainAccessor >> hash [
	^ super hash bitXor: self accessor hash
]

{ #category : 'model' }
MAChainAccessor >> name [
	^ super name, '::', self accessor name
]

{ #category : 'copying' }
MAChainAccessor >> postCopy [
	super postCopy.
	accessor := accessor copy
]

{ #category : 'model' }
MAChainAccessor >> read: aModel [
	^ super read: (self accessor read: aModel)
]

{ #category : 'printing' }
MAChainAccessor >> storeOn: aStream [
	aStream nextPut: $(.
	self class storeOn: aStream.
	aStream
		nextPutAll: ' on: ';
		store: self next;
		nextPutAll: ' accessor: ';
		store: self accessor;
		nextPut: $)
]

{ #category : 'model' }
MAChainAccessor >> write: anObject to: aModel [
	super write: anObject to: (self accessor read: aModel)
]
