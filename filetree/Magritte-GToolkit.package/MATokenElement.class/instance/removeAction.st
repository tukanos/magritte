accessing
removeAction

	^ removeAction ifNil: [ [ self removeFromParent ] ]