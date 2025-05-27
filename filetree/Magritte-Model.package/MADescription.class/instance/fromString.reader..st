strings
fromString: aString reader: aReader
	"Answer an object being parsed from ==aString== using ==aReader==."

	^ aReader read: aString readStream description: self