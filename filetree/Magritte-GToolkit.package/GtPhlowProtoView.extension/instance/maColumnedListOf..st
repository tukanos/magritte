*magritte-gToolkit
maColumnedListOf: aClassOrContainer
	
	^ self 
		maColumnedListOf: aClassOrContainer 
		descriptionsSelect: [ :desc | true ]