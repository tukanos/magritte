Extension { #name : 'MAPasswordDescription' }

{ #category : '*Magritte-Seaside-Default' }
MAPasswordDescription class >> defaultComponentClasses [
	^ Array with: MATextPasswordComponent with: MAVerifiedPasswordComponent with: MATextInputComponent
]
