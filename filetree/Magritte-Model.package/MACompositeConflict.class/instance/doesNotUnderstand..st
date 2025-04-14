accessing
doesNotUnderstand: aMessage
	^ (self kind canUnderstand: aMessage selector)
		ifTrue: [ self string ]
		ifFalse: [ super doesNotUnderstand: aMessage ]