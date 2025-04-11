private
push: aDictionary
	"Utility method to push a dictionary mapping descriptions to values into the model."

	aDictionary keysAndValuesDo: [ :key :value |
		(self shouldPush: value using: key) 
			ifTrue: [ self model write: value using: key ] ]