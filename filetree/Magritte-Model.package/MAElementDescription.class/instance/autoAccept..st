accessing
autoAccept: aBoolean
	"Set whether new memento values should be automatically propagated to a model.
	
	New values are propagated to the model only if successfully validated. See {{gtMethod: GtMagritteMemento >> #autoAcceptValue: }} for more details."
	
	self propertyAt: #autoAccept put: aBoolean