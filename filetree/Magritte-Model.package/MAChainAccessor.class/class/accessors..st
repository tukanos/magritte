instance creation
accessors: aSequenceableCollection
	aSequenceableCollection isEmpty
		ifTrue: [ self error: 'Unable to create accessor sequence from empty collection.' ].
	aSequenceableCollection size = 1
		ifTrue: [ ^ aSequenceableCollection first asAccessor ].
	^ self 
		on: (self accessors: aSequenceableCollection allButFirst)
		accessor: aSequenceableCollection first asAccessor