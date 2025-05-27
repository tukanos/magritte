accessing
messageSend: anObject
	Halt if: [ anObject receiver employee isNil ].
	messageSend := anObject