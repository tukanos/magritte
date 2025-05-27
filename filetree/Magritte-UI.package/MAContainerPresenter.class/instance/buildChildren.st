private
buildChildren
	self flag: 'very similar in Seaside, except children kept in a dictionary, not a sequencable collection. Why?'.
	^ Array streamContents: [ :stream |
		self magritteDescription do: [ :each |
			each isVisible ifTrue: [
				stream nextPut: (each morphicClass
					memento: self memento
					description: each
					parent: self) ] ] ]