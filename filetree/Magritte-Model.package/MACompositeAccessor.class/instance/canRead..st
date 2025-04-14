testing
canRead: aModel
	^ (self accessor canRead: aModel) and: [ (self elementsFrom: aModel) allSatisfy: [ :e | self next canRead: e ] ]