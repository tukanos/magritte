private
visitRelationDescription: aDescription withTokenElementClass: aClass

	aDescription gtSearchSource ifNil: [ ^ self visitRelationDescription: aDescription ].
	
	self 
		using: aDescription
		addInputField: [ 
			aClass 
				forObject: self memento 
				withRelationDescription: aDescription ]