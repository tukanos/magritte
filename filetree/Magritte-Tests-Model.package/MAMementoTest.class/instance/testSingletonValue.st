tests-actions
testSingletonValue

	| obj |
	obj := MAMockAddress new
		plzType: Number;
		yourself.
		
	memento := obj mementoClass
		model: obj
		description: obj magritteDescription.
		
	self assert: (memento original at: obj plzTypeDescription) == obj plzType.