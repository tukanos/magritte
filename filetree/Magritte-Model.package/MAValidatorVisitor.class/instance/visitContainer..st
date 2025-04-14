visiting-descriptions
visitContainer: aDescription
	
	super visitContainer: aDescription.
	self object ifNotNil: [ :obj |
		aDescription do: [ :description |
			self
				use: (obj readUsing: description)
				during: [ self visit: description ] ] ]