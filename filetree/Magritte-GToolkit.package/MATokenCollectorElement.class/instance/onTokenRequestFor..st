accessing
onTokenRequestFor: anObject
	| collection |
	collection := self object readUsing: self relationDescription.
	collection add: anObject.
	self refreshTokens