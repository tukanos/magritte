tests-actions
testConflictCommit
	self write: self includedInstance.
	self assert: self read = self includedInstance.
	self assert: self memento hasChanges.
	self deny: self memento hasConflict.

	self value: self otherInstance.
	self assert: self read = self includedInstance.
	self assert: self memento hasChanges.
	self assert: self memento hasConflict.

	self memento commit.
	self assert: self read = self includedInstance.
	self assert: self value = self includedInstance.
	self deny: self memento hasChanges.
	self deny: self memento hasConflict