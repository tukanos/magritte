accessing
contextMenuActions

	contextMenuActions ifNotNil: [ ^ contextMenuActions ].
	
	^ contextMenuActions := OrderedCollection with:
		'Remove' -> [ self removeAction value ].