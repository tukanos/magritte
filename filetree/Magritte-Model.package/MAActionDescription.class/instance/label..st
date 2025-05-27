accessing
label: aString

	| anOldLabel |
	anOldLabel := label.
	label := aString.
	
	self propertyAnnounceKey: #label oldValue: anOldLabel newValue: aString