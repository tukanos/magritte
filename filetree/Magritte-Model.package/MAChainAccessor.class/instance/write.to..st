model
write: anObject to: aModel
	super write: anObject to: (self accessor read: aModel)