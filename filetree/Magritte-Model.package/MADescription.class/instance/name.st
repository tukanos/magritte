accessing-configuration
name
	^ self propertyAt: #name ifAbsent: [ self accessor name ]