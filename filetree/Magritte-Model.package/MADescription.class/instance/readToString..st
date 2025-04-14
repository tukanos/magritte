convenience
readToString: aModel
	^ self toString: (self read: aModel)
	"This is a common idiom, e.g. for the GUI layer, so we reified it"