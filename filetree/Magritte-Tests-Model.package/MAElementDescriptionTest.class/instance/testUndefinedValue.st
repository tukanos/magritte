tests-accessing
testUndefinedValue
	self description undefinedValue: 'null'.
	self assert: self description undefinedValue equals: 'null'.
	
	self description accessor: #yourself.
	self assert: (self nullInstance readUsing: self description) equals: 'null'