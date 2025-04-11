actions
reset

	| dict |
	super reset.
	
	dict := self pullRawTransforming: [ :value :desc |
		| isCollectionOfRelations |
		isCollectionOfRelations := value isCollection and: [ (desc isKindOf: MAReferenceDescription) and: [ desc isMultiple ] ].
		isCollectionOfRelations 
			ifTrue: [ value copy ]
			ifFalse: [ value ] ].
	
	self setOriginal: dict.
	
	"Implementation note: We copy some field values because checked mementos compare them to the current object to see if it has changed elsewhere. If a field references a collection, and we hold onto that actual collection, and the elements in the collection are changed from the outside, our 'original' will also change and validation will never fail and so offers no protection. We limit the copying to just this case because copying can cause other unforeseen problems.
	
	One example is illustrated in MAMementoTest>>testSingletonValue.
	
	Another is that we had at one time done the copying in MACachedMemento>>#cookPullRaw:, but it proved too dangerous because the *cache* also contained copies, not just the *original* as here. For example (ignoring the question of whether this is good design), what if the model required that a field point to a *particular* collection? We might replace that particular collection with a copy, which then goes out of sync with the 'real' collection. Now, outside changes also 'bleed' into caches, but it seems not to matter. If a user was worried about outside changes, they would use an MACheckedMemento which would flag the problem during validation, not an MACachedMemento. Choosing a cached memento means we are specifically *not* checking for whether the model has changed elsewhere. Since the cache is changing with the model, there will be nothing to commit unless we explicitly change the field in the memento, which seems like the expected behavior."