accessing
propertyAt: aSymbol putRemovingNil: aValue

	| anOldValue |
	aValue ifNotNil: [ 
		^ self propertyAt: aSymbol put: aValue ].

	anOldValue := (self hasProperty: aSymbol)
		ifTrue: [ self properties removeKey: aSymbol ]
		ifFalse: [ aValue ].

	self propertyAnnounceKey: aSymbol oldValue: anOldValue newValue: aValue.

	^ anOldValue