model
write: anObject to: aModel
	^ (self elementsFrom: aModel) do: [ :e | 
		(anObject isKindOf: MACompositeConflict) ifFalse: [ self next write: anObject to: e ] ]