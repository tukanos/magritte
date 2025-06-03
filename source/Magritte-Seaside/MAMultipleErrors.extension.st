Extension { #name : 'MAMultipleErrors' }

{ #category : '*Magritte-Seaside-Rendering' }
MAMultipleErrors >> renderOn: html [
	html unorderedList: [
		self collection
			do: [ :each | html listItem: each ] ]
]
