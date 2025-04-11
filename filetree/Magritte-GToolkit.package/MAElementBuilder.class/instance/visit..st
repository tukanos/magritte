accessing
visit: anObject
	self flag: 'if we keep the decorator stuff here, remove this method'.
	super visit: anObject.
	"^ self element"