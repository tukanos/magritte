initialization
onTokenRequestFor: anObject
	self relationDescription write: anObject to: self object.
	self refreshTokens