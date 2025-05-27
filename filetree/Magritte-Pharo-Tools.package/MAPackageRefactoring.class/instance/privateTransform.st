transforming
privateTransform
	self classes 
		collect: [ :each | MAClassRefactoring model: self model className: each ]
		thenDo: [ :each | self generateChangesFor: each ]