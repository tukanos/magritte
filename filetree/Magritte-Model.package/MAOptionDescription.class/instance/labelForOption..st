private
labelForOption: anObject
	self propertyAt: #labels ifPresent: [ :labels | labels optionFor: anObject ifPresent: [ :value | ^ value ] ].
	^ self displayStringFor: anObject.