convenience
writeFromString: aString to: aModel
	| value |
	value := self fromString: aString.
	^ self write: value to: aModel
	"This is a common idiom, e.g. for the GUI layer, so we reified it"