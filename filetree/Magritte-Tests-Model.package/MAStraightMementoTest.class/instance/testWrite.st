tests-basic
testWrite

	"No need to save the default value"
	self write: self defaultInstance.
	self assert: self value equals: self nullInstance.
	
	self write: self nullInstance.
	self assert: self value equals: self nullInstance.
	
	self write: self includedInstance.
	self assert: self value equals: self includedInstance.