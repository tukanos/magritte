*magritte-gToolkit
gtView
	| valuable |
	valuable := self 
		propertyAt: #gtView
		ifAbsent: [ self defaultGtView ].
	
	^ [ :aView :aDescription :anObject |
			| view |
			view := valuable cull: aView cull: aDescription cull: anObject.
			self gtCustomizeView: view for: anObject.
			view ]