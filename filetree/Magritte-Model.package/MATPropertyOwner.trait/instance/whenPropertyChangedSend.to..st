subscriptions
whenPropertyChangedSend: aSelector to: aReceiver
	| anAnnouncer |
	anAnnouncer := self properties 
		at: #propertyAnnouncer
		ifAbsentPut: [ Announcer new ].

	^ anAnnouncer weak 
		when: MAPropertyChangedAnnouncement
		send: aSelector
		to: aReceiver