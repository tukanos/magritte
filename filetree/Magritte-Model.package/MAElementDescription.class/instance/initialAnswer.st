accessing
initialAnswer
	^ self propertyAt: #initialAnswer ifAbsent: [ self default ]