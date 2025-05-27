testing
hasConflict
	"Answer ==true==, if there is an edit conflict."

	^ self hasChanges and: [ self hasModelChangedElsewhere ]