subscriptions
propertyAnnounceKey: aPropertyKey oldValue: anOldValue newValue: aNewValue
	"Announce a property change if there are subscriptions."

	self propertyAnnouncerDo: [ :anAnnouncer |
		anOldValue = aNewValue ifFalse: [
			anAnnouncer announce: (MAPropertyChangedAnnouncement new
					owner: self;
					key: aPropertyKey;
					value: aNewValue) ] ]