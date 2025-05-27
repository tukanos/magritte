answering
answer: anObject

	| didUserCancel |
	self view delete.
	
	didUserCancel := anObject isNil.
	didUserCancel | answerBlock isNil ifTrue: [ ^ self ].

	answerBlock value: anObject.