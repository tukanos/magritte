examples
for: anObject set: aDescription to: anotherObject
	^ self new
		receiver: anObject; 
		field: aDescription;
		newValue: anotherObject;
		yourself