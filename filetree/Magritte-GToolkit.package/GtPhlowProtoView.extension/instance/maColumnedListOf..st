*Magritte-GToolkit
maColumnedListOf: aClassOrContainer
	
	^ self 
		maColumnedListOf: aClassOrContainer 
		descriptionsSelect: [ :desc | true ]