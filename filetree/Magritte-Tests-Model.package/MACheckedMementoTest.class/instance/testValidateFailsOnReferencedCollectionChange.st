tests-actions
testValidateFailsOnReferencedCollectionChange

	| occupants obj |
	occupants := #(Bill Fred) asOrderedCollection.

	obj := MAMockAddress new
		occupants: occupants;
		yourself.
	
	memento := self actualClass
		model: obj
		description: obj magritteDescription.
	
	"Field-referenced collection changes outside of memento"
	obj occupants add: 'Jim'.

	"Now we change the same field via the memento"
	memento write: #(Tom) using: obj occupantsDescription.
	
	self should: [ memento validate ] raise: MAConflictError.