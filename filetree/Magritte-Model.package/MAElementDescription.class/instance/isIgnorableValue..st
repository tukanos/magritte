utility
isIgnorableValue: anObject

	| ignorableValues isIgnorableDefault |

	ignorableValues := OrderedCollection
		with: nil
		with: self undefinedValue.
	
	isIgnorableDefault := self shouldCacheDefault not and: [ anObject = self default ].
	isIgnorableDefault ifTrue: [ ignorableValues add: self default ].
	
	^ ignorableValues includes: anObject