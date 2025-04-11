transforming
privateTransform
	self descriptionMethodRename.
	self refactorings do: [ :each | self generateChangesFor: each ]