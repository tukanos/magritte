accessing
presenter
	| memento |
	presenter ifNotNil: [ ^ presenter ].
	"Morphic puts this in container"
	memento := self object mementoClass
		model: self object
		description: self objectDescription.
	^ presenter := MABlocContainerPresenter memento: memento