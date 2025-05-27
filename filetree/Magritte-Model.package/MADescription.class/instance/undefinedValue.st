accessing-properties
undefinedValue

	^ self 
		propertyAt: #undefinedValue 
		ifAbsent: [ self class defaultUndefinedValue ]