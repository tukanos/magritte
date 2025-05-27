accessing
action: aValuable

	| anOldAction |
	anOldAction := action.
	action := aValuable.
	
	self propertyAnnounceKey: #action oldValue: anOldAction newValue: aValuable