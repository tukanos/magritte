initialization
refreshTokens

	| currentValue |
	self tokenContainer removeChildren.
	currentValue := self object readUsing: self relationDescription.
	currentValue ifNotNil: [ self addTokenFor: currentValue ].