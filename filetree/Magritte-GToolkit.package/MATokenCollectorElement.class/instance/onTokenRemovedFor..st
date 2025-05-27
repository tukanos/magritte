accessing
onTokenRemovedFor: anObject
	| collection |
	collection := self object readUsing: self relationDescription.
	collection remove: anObject