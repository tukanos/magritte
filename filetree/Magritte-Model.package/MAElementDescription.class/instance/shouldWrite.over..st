utility
shouldWrite: anObject over: anotherObject

	self isVisible ifFalse: [ ^ false ].
	self isReadOnly ifTrue: [ ^ false ].
	
	((self isIgnorableValue: anObject) and: [ self isIgnorableValue: anotherObject ])
		ifTrue: [ ^ false ].
	
	(anObject == anotherObject or: [ anObject = anotherObject ])
		ifTrue: [ ^ false ].
		
	^ true
	
	"Implementation note: We compare via both #== and #= to cover two scenarios:
		1) a referenced object that changes on the outside. From our perspective, as long as we are still refering to the same object there is no relevant change. Unless we accept identity equality, any changes to complex objects from outside will bleed into this object. E.g. if outside someone does `self person age: 25`, this object will appear to be changed. This would wreak havoc with mementos, forms, etc.
		2) objects (e.g. strings and other value objects) that override #= to mean something other than identity comparison."