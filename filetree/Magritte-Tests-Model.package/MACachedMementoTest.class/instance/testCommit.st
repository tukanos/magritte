tests-actions
testCommit
	self write: self includedInstance.
	self assert: self read = self includedInstance.
	self assert: self value = self nullInstance.
	self assert: self memento hasChanges.

	self memento commit.
	self assert: self read = self includedInstance.
	self assert: self value = self includedInstance.
	self deny: self memento hasChanges