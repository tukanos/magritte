private
cookRawPull: aDictionary
	"The reason for the somewhat cryptic message name is that each subclass is free to perform any needed actions. Here we just replace undefinedValues with default values"

	aDictionary keysAndValuesDo: [ :elemDescription :value |
		value = elemDescription undefinedValue ifTrue: [ 
			aDictionary 
				at: elemDescription 
				put: elemDescription default ] ]