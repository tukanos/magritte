comparing
= anObject
	self == anObject
		ifTrue: [ ^ true ].

	self class = anObject class
		ifFalse: [ ^ false ].

	^ self methodSelector = anObject methodSelector
		and: [ self modelClass = anObject modelClass ]