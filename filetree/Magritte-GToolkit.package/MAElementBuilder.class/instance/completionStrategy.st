accessing
completionStrategy

	^ completionStrategy 
		ifNil: [ GtStringsCompletionStrategy new ]
		ifNotNil: [ completionStrategy value ].