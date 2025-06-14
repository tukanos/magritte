Class {
	#name : 'MACheckedMementoTest',
	#superclass : 'MACachedMementoTest',
	#category : 'Magritte-Tests-Model-Memento'
}

{ #category : 'testing' }
MACheckedMementoTest class >> isAbstract [
	^ false
]

{ #category : 'private' }
MACheckedMementoTest >> actualClass [
	^ MACheckedMemento
]

{ #category : 'tests-actions' }
MACheckedMementoTest >> testConflictCommit [
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
]

{ #category : 'tests-actions' }
MACheckedMementoTest >> testConflictReset [
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
]

{ #category : 'tests-accessing' }
MACheckedMementoTest >> testOriginal [
	self assert: self memento original size = self magritteDescription size
]

{ #category : 'tests-actions' }
MACheckedMementoTest >> testValidateConflictCommit [
	self write: self includedInstance.
	self shouldnt: [ self memento validate ] raise: MAValidationError.

	self value: self otherInstance.
	self should: [ self memento validate ] raise: MAValidationError.

	self memento commit.
	self shouldnt: [ self memento validate ] raise: MAValidationError
]

{ #category : 'tests-actions' }
MACheckedMementoTest >> testValidateConflictReset [
	self write: self includedInstance.
	self shouldnt: [ self memento validate ] raise: MAValidationError.

	self value: self otherInstance.
	self should: [ self memento validate ] raise: MAValidationError.

	self memento reset.
	self shouldnt: [ self memento validate ] raise: MAValidationError
]

{ #category : 'tests-actions' }
MACheckedMementoTest >> testValidateFailsOnReferencedCollectionChange [

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
]
