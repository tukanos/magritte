tests-actions
testCachedDefaultValues

	| obj plzDescription |
	obj := MAMockAddress new.
	
	memento := self actualClass
		model: obj
		description: obj magritteDescription.
		
	memento := self actualClass
		model: obj
		description: obj magritteDescription.
		
	plzDescription := obj descriptionPlz
		default: 1;
		shouldCacheDefault: true;
		yourself.
	
	memento push: {
		plzDescription -> plzDescription default } asDictionary.
		
	self assert: obj plz equals: plzDescription default