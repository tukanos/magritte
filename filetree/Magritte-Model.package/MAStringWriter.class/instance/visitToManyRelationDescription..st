visiting-description
visitToManyRelationDescription: aDescription
	self object
		do: [ :each | self stream nextPutAll: (aDescription reference toString: each) ]
		separatedBy: [ self stream nextPutAll: ', ' ]