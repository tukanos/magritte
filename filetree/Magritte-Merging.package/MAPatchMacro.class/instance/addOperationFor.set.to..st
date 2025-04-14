accessing
addOperationFor: modelObject set: aDescription to: valueObject
	| newOp |
	newOp := MAPatchOperation
		for: modelObject
		set: aDescription
		to: valueObject.
	newOp isNoOp ifTrue: [ ^ self ].
	^ self operations add: newOp.