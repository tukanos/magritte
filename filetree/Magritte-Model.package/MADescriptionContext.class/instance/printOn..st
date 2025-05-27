accessing
printOn: aStream
	| aMethodClass |
	super printOn: aStream.

	self modelClass ifNil: [ ^ self ].
	self methodSelector ifNil: [ ^ self ].
	aMethodClass := self methodClass.

	aStream nextPut: $(.

	aMethodClass ifNil: [ aStream nextPutAll: 'Missing method ' ].

	aStream print: self modelClass.

	self modelClass = aMethodClass
		ifFalse: [ aStream
				nextPut: $(;
				print: aMethodClass;
				nextPut: $) ].

	aStream
		nextPutAll: '>>#';
		nextPutAll: self methodSelector asString;
		nextPut: $)