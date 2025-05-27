accessing
cacheOldValue
	(self receiver isNil or: [ self field isNil ]) ifTrue: [ ^ self ].
	self oldValue: (self receiver readUsing: self field)