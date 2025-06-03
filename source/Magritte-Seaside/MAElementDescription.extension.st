Extension { #name : 'MAElementDescription' }

{ #category : '*Magritte-Seaside-Accessing' }
MAElementDescription >> checkboxLabel [
	^ self propertyAt: #checkboxLabel ifAbsent: [ self label ]
]

{ #category : '*Magritte-Seaside-Accessing' }
MAElementDescription >> checkboxLabel: aString [
	self propertyAt: #checkboxLabel put: aString
]
