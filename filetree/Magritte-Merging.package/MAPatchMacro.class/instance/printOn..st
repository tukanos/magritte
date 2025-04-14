printing
printOn: aStream

	self receivers
		ifNotEmpty: [ :recs |
			aStream nextPutAll: 'Patch for '.
			recs
				do: [ :e | aStream print: e ]
				separatedBy: [ aStream space ] ]
		ifEmpty: [ super printOn: aStream ]