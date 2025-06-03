Extension { #name : 'MAContainer' }

{ #category : '*Magritte-Seaside-Converting' }
MAContainer >> asComponentOn: anObject [
	^ self componentClass
		memento: (anObject mementoClass
			model: anObject
			description: self)
]

{ #category : '*Magritte-Seaside-Accessing' }
MAContainer >> componentRenderer [
	^ self propertyAt: #componentRenderer ifAbsent: [ self class defaultComponentRenderer ]
]

{ #category : '*Magritte-Seaside-Accessing' }
MAContainer >> componentRenderer: aClass [
	self propertyAt: #componentRenderer put: aClass
]

{ #category : '*Magritte-Seaside-Defaults' }
MAContainer class >> defaultComponentClasses [
	^ Array with: MAContainerComponent
]

{ #category : '*Magritte-Seaside-Defaults' }
MAContainer class >> defaultComponentRenderer [
	^ MATableRenderer
]
