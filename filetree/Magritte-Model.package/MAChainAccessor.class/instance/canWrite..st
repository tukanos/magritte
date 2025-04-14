testing
canWrite: aModel
	^ (self accessor canRead: aModel) and: [ self next canWrite: (self accessor read: aModel) ]