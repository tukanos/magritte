Extension { #name : 'MADescription' }

{ #category : '*Magritte-Seaside-Accessing' }
MADescription >> componentClass [
	^ self propertyAt: #componentClass ifAbsent: [ self class defaultComponentClass ]
]

{ #category : '*Magritte-Seaside-Accessing' }
MADescription >> componentClass: aClass [
	self propertyAt: #componentClass put: aClass
]

{ #category : '*Magritte-Seaside-Accessing' }
MADescription >> cssClass: aString [
	(self propertyAt: #cssClasses ifAbsentPut: [ self class defaultCssClasses ])
		add: aString
]

{ #category : '*Magritte-Seaside-Accessing' }
MADescription >> cssClasses [
	^ self propertyAt: #cssClasses ifAbsent: [ self class defaultCssClasses ]
]

{ #category : '*Magritte-Seaside-Accessing' }
MADescription >> cssClasses: aCollection [
	self propertyAt: #cssClasses put: aCollection
]

{ #category : '*Magritte-Seaside-Accessing' }
MADescription >> currentCssClasses [
	| classes |
	classes := OrderedCollection withAll: self cssClasses.
	self isReadOnly
		ifTrue: [ classes add: 'readonly' ].
	self isRequired
		ifTrue: [ classes add: 'required' ].
	^classes
]

{ #category : '*Magritte-Seaside-Defaults' }
MADescription class >> defaultComponentClass [
	^ self defaultComponentClasses isEmpty
		ifTrue: [ MAUndefinedComponent ]
		ifFalse: [ self defaultComponentClasses first ]
]

{ #category : '*Magritte-Seaside-Defaults' }
MADescription class >> defaultComponentClasses [
	^ Array with: MAUndefinedComponent
]

{ #category : '*Magritte-Seaside-Defaults' }
MADescription class >> defaultCssClasses [
	^ OrderedCollection new
]

{ #category : '*Magritte-Seaside-Defaults' }
MADescription class >> defaultReportColumnClass [
	^ self defaultReportColumnClasses notEmpty
		ifTrue: [ self defaultReportColumnClasses first ]
]

{ #category : '*Magritte-Seaside-Defaults' }
MADescription class >> defaultReportColumnClasses [
	^ Array with: MADescribedColumn
]

{ #category : '*Magritte-Seaside-Description' }
MADescription >> descriptionComponentClass [
	<magritteDescription>
	^ MASingleOptionDescription new
		accessor: #componentClass;
		label: 'Component Class';
		reference: MAClassDescription new;
		options: self class defaultComponentClasses;
		default: self class defaultComponentClass;
		priority: 1000;
		yourself
]

{ #category : '*Magritte-Seaside-Description' }
MADescription >> descriptionReportColumnClass [
	<magritteDescription>
	^ MASingleOptionDescription new
		accessor: #reportColumnClass;
		label: 'Report Column Class';
		priority: 1010;
		reference: MAClassDescription new;
		options: self class defaultReportColumnClasses;
		default: self class defaultReportColumnClass;
		yourself
]

{ #category : '*Magritte-Seaside-Accessing' }
MADescription >> reportColumnClass [
	^ self propertyAt: #reportColumnClass ifAbsent: [ self class defaultReportColumnClass ]
]

{ #category : '*Magritte-Seaside-Accessing' }
MADescription >> reportColumnClass: aClass [
	self propertyAt: #reportColumnClass put: aClass
]
