private-testing
shouldPush: anObject using: aDescription

	| originalValue cachedValue didChangeHere |
	originalValue := self original at: aDescription.
	cachedValue := self cache at: aDescription.
	
	didChangeHere := aDescription shouldWrite: cachedValue over: originalValue.
	
	^ didChangeHere and: [ super shouldPush: anObject using: aDescription ]