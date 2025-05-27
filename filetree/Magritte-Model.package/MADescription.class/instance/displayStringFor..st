displaying
displayStringFor: anObject
	"Convert object to a string. If a block was passed to #display: use that, otherwise use the defaultDisplayProperty. N.B. It's probably best not to use this outside of the library insternals. It should be private except that it's used by option descriptions and string writer. The canonical way to get this info is `self reference toString: anObject`"

	^ self displayBlockOrSymbol cull: anObject cull: self.