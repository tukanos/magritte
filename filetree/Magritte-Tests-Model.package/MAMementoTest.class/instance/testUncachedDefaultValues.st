tests-actions
testUncachedDefaultValues

	| obj plzDescription |
	obj := MAMockAddress new.
	
	memento := self actualClass
		model: obj
		description: obj magritteDescription.
		
	plzDescription := obj descriptionPlz
		default: 1;
		yourself.
	
	memento push: {
		plzDescription -> plzDescription default } asDictionary.
		
	self assert: obj plz equals: nil