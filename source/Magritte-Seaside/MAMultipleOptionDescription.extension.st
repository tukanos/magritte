Extension { #name : 'MAMultipleOptionDescription' }

{ #category : '*Magritte-Seaside-Defaults' }
MAMultipleOptionDescription class >> defaultComponentClasses [
	^ Array with: MAMultiselectListComponent with: MACheckboxGroupComponent with: MAListCompositionComponent
]
