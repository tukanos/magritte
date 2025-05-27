tests
testUndefinedValue
	self
		shouldnt: [ 
			MAValidatorVisitor new
				validate: 'null'
				using:
					(MABooleanDescription new
						undefinedValue: 'null';
						yourself) ]
		raise: MAKindError