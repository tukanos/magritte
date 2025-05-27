private
buildDescriptions: anObject
	| descriptionExtensions descriptionSelectors extendedDescriptions |
	
	descriptionSelectors := self uniqueDescriptionSelectors: anObject.
	descriptionExtensions := self descriptionExtensions: anObject.
	
	extendedDescriptions := descriptionSelectors 
		collect:  [ :descSel |
			| initialDescription |
			initialDescription := anObject perform: descSel.
			
			self setDefiningContextOf: initialDescription to: descSel in: anObject class.
			
			self description: initialDescription extendedBy: descriptionExtensions for: descSel of: anObject ].

	^ extendedDescriptions select: #notNil.