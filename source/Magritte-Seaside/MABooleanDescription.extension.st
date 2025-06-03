Extension { #name : 'MABooleanDescription' }

{ #category : '*Magritte-Seaside-Defaults' }
MABooleanDescription class >> defaultComponentClasses [
	^ Array with: MACheckboxComponent with: MASelectListComponent with: MARadioGroupComponent
]
