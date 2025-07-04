tests-actions
testConflictReset
	self write: self includedInstance.
	self assert: self read = self includedInstance.
	self assert: self memento hasChanges.
	self deny: self memento hasConflict.

	self value: self otherInstance.
	self assert: self read = self includedInstance.
	self assert: self memento hasChanges.
	self assert: self memento hasConflict.

	self memento reset.
	self assert: self read = self otherInstance.
	self assert: self value = self otherInstance.
	self deny: self memento hasChanges.
	self deny: self memento hasConflict