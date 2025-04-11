strings
fromStringCollection: aCollection reader: aReader
	"Answer a collection of objects being parsed from ==aCollection== of strings using ==aReader==."

	^ aCollection collect: [ :each | self fromString: each reader: aReader ]