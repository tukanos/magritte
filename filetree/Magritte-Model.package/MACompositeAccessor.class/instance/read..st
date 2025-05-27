model
read: aModel
	| elements values |
	elements := self elementsFrom: aModel.
	values := elements collect: [ :e | self next read: e ].
	^ values asSet size > 1
		ifTrue: [ MACompositeConflict new kind: self kind; yourself  ]
		ifFalse: [ values first ].
	