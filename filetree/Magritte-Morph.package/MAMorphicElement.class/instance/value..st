accessing
value: anObject
	self magritteDescription write: anObject to: self memento.
	self changed: #value