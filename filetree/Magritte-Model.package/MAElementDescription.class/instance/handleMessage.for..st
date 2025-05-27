testing
handleMessage: aMessage for: anObject
	"We do no error checking; you probably want to send #handlesSelector: first to make sure"
	^ aMessage numArgs = 0
		ifTrue: [ anObject readUsing: self ]
		ifFalse: [ anObject write: aMessage argument using: self ]