accessing
removeAction: aValuable

	removeAction := [ 
		aValuable cull: self object.
		self removeFromParent ]