Extension { #name : 'ArrayedCollection' }

{ #category : '*Magritte-Model' }
ArrayedCollection >> copyWithAll: aCollection [
	^ (self species new: self size + aCollection size)
		replaceFrom: 1 to: self size with: self startingAt: 1;
		replaceFrom: self size + 1 to: self size + aCollection size with: aCollection startingAt: 1;
		yourself
]
