printing
printOn: aStream

	aStream
		nextPutAll: 'Change ';
		nextPutAll: field label;
		nextPutAll: ' from ';
		print: self oldValue;
		nextPutAll: ' to ';
		print: newValue