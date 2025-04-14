*magritte-model
normalizeCamelCase

	^ self class streamContents: [ :out |
		self do: [ :e |
			| isNewWord |
			isNewWord := e isUppercase and: [ out position > 0 and: [ out peekLast isUppercase not ] ].
			isNewWord ifTrue: [ out nextPut: Character space ].
			out nextPut: e ] ]