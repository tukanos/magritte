"
I am an abstract description of different options the user can choose from.

My options can be: 
- sorted or unsorted
- extensible or not i.e. can new options be added?

There are several ways to set my options:
- ${method:MAOptionDescription>>#options:|label='#options:'}$ is the most straightforward. You can just pass a collection of objects. If you want to dynamically construct the options, pass a ${class:MADynamicOptions}$.
- ${method:MAOptionDescription>>#optionsTextual:|label='#optionsTextual:'}$ does not, as it might suggest at first glance, use strings as options, but instead uses the ==reference== to convert the strings into domain objects.
- ${method:MAOptionDescription>>#optionsAndLabels:|label='#optionsAndLabels:'}$ - takes a collection where the values are the option objects, and the keys are the corresponding labels.

One inconsistency in the above is introduced by the implementation of dynamic options via ==#options:==. In that case, the actual options are not returned by ==#options==, but by ${method:MAOptionDescription>>#allOptions}$. So ==options== is actually misleading. And the proof is the fact that client code elsewhere in Magritte uses ==options== - which will not actually return dynamic options - instead of ==allOptions==:
[[[language=smalltalk
#options gtReferences & 'Magritte-' gtPackageMatches
]]]
Possible fixes might be:
- rename ==options[:]== to ==optionSource==
- have the ==options== getter return what's currently returned by ==allOptions==
"
Class {
	#name : 'MAOptionDescription',
	#superclass : 'MAReferenceDescription',
	#instVars : [
		'options'
	],
	#category : 'Magritte-Model-Description'
}

{ #category : 'accessing-defaults' }
MAOptionDescription class >> defaultExtensible [
	^ false
]

{ #category : 'accessing-defaults' }
MAOptionDescription class >> defaultOptions [
	^ OrderedCollection new
]

{ #category : 'accessing-defaults' }
MAOptionDescription class >> defaultSorted [
	^ false
]

{ #category : 'visiting' }
MAOptionDescription >> acceptMagritte: aVisitor [
	aVisitor visitOptionDescription: self
]

{ #category : 'accessing-dynamic' }
MAOptionDescription >> allOptions [
	^ self options maAllOptionsFor: self
]

{ #category : 'accessing-dynamic' }
MAOptionDescription >> allOptionsWith: anObject [
	^ self prepareOptions: ((self shouldNotInclude: anObject)
		ifFalse: [ self options copyWith: anObject ]
		ifTrue: [ self options copy ])
]

{ #category : 'actions' }
MAOptionDescription >> beExtensible [
	self extensible: true
]

{ #category : 'actions' }
MAOptionDescription >> beLimited [
	self extensible: false
]

{ #category : 'actions' }
MAOptionDescription >> beSorted [
	self sorted: true
]

{ #category : 'actions' }
MAOptionDescription >> beUnsorted [
	self sorted: false
]

{ #category : 'acessing-magritte' }
MAOptionDescription >> descriptionDefault [
	<magritteDescription>
	^ nil
]

{ #category : 'acessing-magritte' }
MAOptionDescription >> descriptionExtensible [
	<magritteDescription>
	^ MABooleanDescription new
		accessor: #extensible;
		label: 'Extensible';
		priority: 250;
		default: self class defaultExtensible;
		yourself
]

{ #category : 'acessing-magritte' }
MAOptionDescription >> descriptionOptions [
	<magritteDescription>
	^ MAMemoDescription new
		accessor: #optionsTextual;
		label: 'Options';
		priority: 410;
		default: self class defaultOptions;
		yourself
]

{ #category : 'acessing-magritte' }
MAOptionDescription >> descriptionSorted [
	<magritteDescription>
	^ MABooleanDescription new
		accessor: #sorted;
		label: 'Sorted';
		priority: 240;
		default: self class defaultSorted;
		yourself
]

{ #category : 'accessing-properties' }
MAOptionDescription >> extensible [
	^ self propertyAt: #extensible ifAbsent: [ self class defaultExtensible ]
]

{ #category : 'accessing-properties' }
MAOptionDescription >> extensible: aBoolean [
	self propertyAt: #extensible put: aBoolean
]

{ #category : 'testing' }
MAOptionDescription >> isExtensible [
	^ self extensible
]

{ #category : 'testing' }
MAOptionDescription >> isSorted [
	^ self sorted
]

{ #category : 'private' }
MAOptionDescription >> labelForOption: anObject [
	self propertyAt: #labels ifPresent: [ :labels | labels optionFor: anObject ifPresent: [ :value | ^ value ] ].
	^ self displayStringFor: anObject.
]

{ #category : 'accessing' }
MAOptionDescription >> options [
	^ options ifNil: [ options := self class defaultOptions ]
]

{ #category : 'accessing' }
MAOptionDescription >> options: anArray [
	options := anArray
]

{ #category : 'accessing' }
MAOptionDescription >> optionsAndLabels: aCollection [
	"Set the options to be the keys of aCollection and the labels to be the values of aCollection."

	self options: (aCollection collect: [ :assoc | assoc key ]).
	self propertyAt: #labels put: (aCollection
		inject: IdentityDictionary new
		into: [ :result :assoc | result add: assoc; yourself ])
]

{ #category : 'accessing-textual' }
MAOptionDescription >> optionsTextual [
	^ (self reference toStringCollection: self options)
		asMultilineString
]

{ #category : 'accessing-textual' }
MAOptionDescription >> optionsTextual: aString [
	| lines |
	lines := (aString ifNil: [ String new ]) lines.
	^ self options: (self reference fromStringCollection: lines)
]

{ #category : 'copying' }
MAOptionDescription >> postCopy [
	super postCopy.
	options := options copy
]

{ #category : 'private' }
MAOptionDescription >> prepareOptions: aCollection [
	^ self isSorted
		ifFalse: [ aCollection asArray ]
		ifTrue: [ 
			aCollection asArray
				sort: self sortBlock;
				yourself ]
]

{ #category : 'accessing-dynamic' }
MAOptionDescription >> shouldNotInclude: anObject [
	^ self isExtensible not or: [ anObject isNil or: [ self options includes: anObject ] ]
]

{ #category : 'private' }
MAOptionDescription >> sortBlock [
	^ [ :a :b | (self reference toString: a) caseInsensitiveLessOrEqual: (self reference toString: b) ]
]

{ #category : 'accessing-properties' }
MAOptionDescription >> sorted [
	^ self propertyAt: #sorted ifAbsent: [ self class defaultSorted ]
]

{ #category : 'accessing-properties' }
MAOptionDescription >> sorted: aBoolean [
	self propertyAt: #sorted put: aBoolean
]

{ #category : 'accessing-properties' }
MAOptionDescription >> undefined: aString [
	super undefined: aString.
	self reference isNil
		ifFalse: [ self reference undefined: aString ]
]

{ #category : 'validating' }
MAOptionDescription >> validateOptionKind: anObject [
	(self options includes: anObject)
		ifTrue: [ ^ self ].
	self isExtensible
		ifTrue: [ self reference validate: anObject ]
		ifFalse: [ MAKindError description: self signal: self kindErrorMessage ]
]
