accessing
selectionString
	^ self selection 
		ifNil: [ '' ]
		ifNotNil: [ :sel | sel gtDisplayText ]