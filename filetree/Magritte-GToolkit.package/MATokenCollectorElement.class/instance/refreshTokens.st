accessing
refreshTokens

	| collection |
	self tokenContainer removeChildren.
	collection := self object readUsing: self relationDescription.
	collection isEmptyOrNil ifTrue: [ ^ self ].
	collection do: [ :e | self addTokenFor: e ].