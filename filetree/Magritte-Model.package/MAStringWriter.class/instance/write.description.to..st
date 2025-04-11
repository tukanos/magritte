visiting
write: anObject description: aDescription to: aStream
	^ anObject 
		ifNil: [ 
			aStream
				nextPutAll: aDescription undefined;
				contents ]
		ifNotNil: [ super write: anObject description: aDescription to: aStream ].