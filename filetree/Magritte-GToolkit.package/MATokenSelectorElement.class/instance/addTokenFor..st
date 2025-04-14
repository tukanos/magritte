initialization
addTokenFor: anObject
	
	| token |
	token := MATokenElement new
		label: (self relationDescription reference toString: anObject);
		object: anObject;
		removeAction: [ :obj | self onTokenRemovedFor: obj ];
		yourself.
	self tokenContainer addChild: token