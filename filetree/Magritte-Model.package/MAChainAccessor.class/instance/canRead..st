testing
canRead: aModel
	^ (self accessor canRead: aModel) and: [ self next canRead: (self accessor read: aModel) ]