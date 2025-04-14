private
has: firstDictionary changedFrom: secondDictionary
	
	self magritteDescription do: [ :desc |
		| firstValue secondValue hasFieldChanged |
		firstValue := firstDictionary at: desc ifAbsent: [ nil ].
		secondValue := secondDictionary at: desc ifAbsent: [ nil ].
		hasFieldChanged := desc shouldWrite: firstValue over: secondValue.
		hasFieldChanged ifTrue: [ ^ true ] ].
	^ false