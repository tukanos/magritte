private
pullRawTransforming: aBlock
	| result |
	result := Dictionary new.
	self magritteDescription do: [ :elemDescription |
		| value transformedValue |
		value := self model readUsing: elemDescription.
		transformedValue := aBlock cull: value cull: elemDescription.
		result at: elemDescription put: transformedValue ].
	^ result