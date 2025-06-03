*magritte-model
asMultilineString
	^ String streamContents: [ :stream |
		self
			do: [ :each | stream nextPutAll: each asString ]
			separatedBy: [ stream nextPut: Character cr ] ]