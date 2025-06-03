*magritte-gToolkit
gtButtonFor: anObject

	| button icn |
	button := GtPhlowAction noAction button.
	self comment ifNotEmpty: [ :tt | button tooltip: tt ].
	icn := self gtIcon ifNil: [ self icon ].
	icn ifNotNil: [ :i | button icon: i ].
	self isLabelVisible ifTrue: [ button label: self label ].
	^ button
		action: [ self performOn: anObject ];
		yourself.