private
buildChildren
	^ Array streamContents: [ :stream |
		self magritteDescription do: [ :each |
			each isVisible ifTrue: [
				stream nextPut: (each morphicClass
					memento: self memento
					description: each
					parent: self) ] ] ]