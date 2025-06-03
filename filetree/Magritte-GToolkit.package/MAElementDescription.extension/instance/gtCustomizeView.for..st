*magritte-gToolkit
gtCustomizeView: aView for: anObject
	aView title = aView defaultTitle ifTrue: [ aView title: self label ].
	self flag: 'port #glmAddSelectionActions. Currently views don''t have context menus, so maybe add at top and disable if no selection (possible?)'.