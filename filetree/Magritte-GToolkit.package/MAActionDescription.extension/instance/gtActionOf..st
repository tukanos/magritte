*magritte-gToolkit
gtActionOf: anObject

	(self enableBlock cull: anObject) ifFalse: [ ^ GtPhlowAction noAction ].
	
	^ self
		propertyAt: #gtAction
		ifPresent: [ :valuable | 
			valuable cull: GtPhlowAction noAction cull: anObject cull: self ]
		ifAbsent: [ self gtButtonFor: anObject ].