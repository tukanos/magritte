Class {
	#name : 'MADeveloperMenus',
	#superclass : 'Object',
	#category : 'Magritte-Developer'
}

{ #category : 'nautilus menus' }
MADeveloperMenus class >> maNautilusMethodMenu: aBuilder [
	<nautilusGlobalClassMenu>

	| selection |
	selection := aBuilder model selectedClass.
	selection ifNil: [ ^ self ].
	
	(aBuilder item: #'MA Add Field')
		action: [ selection maAddField ];
		order: 0;
		help: 'Add Magritte Field'.
]
