private
prepareOptions: aCollection
	^ self isRequired
		ifTrue: [ super prepareOptions: aCollection ]
		ifFalse: [ (Array with: self undefinedValue) , (super prepareOptions: aCollection) ]