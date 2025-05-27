transforming
descriptionMethodRename
	| class |
	class := self classObjectFor: className asSymbol.
        (class selectors anySatisfy: [ :each | each = #description ]) ifTrue: [
		self generateChangesFor: (MADescriptionRenameRefactoring forClass: class) ]