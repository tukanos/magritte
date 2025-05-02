accessing
propertyAt: aKey ifPresent: oneArgBlock ifAbsentPut: absentBlock
	"Lookup ==aKey==, if it is present, answer the value of evaluating the oneArgBlock with the value associated with the key, otherwise answer the value of absentBlock."

	| aValue didPut |
	didPut := false.
	aValue := self properties 
		at: aKey 
		ifPresent: oneArgBlock
		ifAbsentPut: [
			didPut := true.
			absentBlock value ].

	didPut ifTrue: [ 
		self propertyAnnounceKey: aKey oldValue: nil newValue: aValue ].

	^ aValue