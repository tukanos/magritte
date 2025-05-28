accessing
customProjectAttributes
	Smalltalk globals isDictionary
		ifTrue: [ "Pharo"
			^ self isGTImage
				ifFalse: [ #(notGToolkit) ]
				ifTrue: [ #(GToolkit) ] ]
		ifFalse: [ "GemStone"
			^ #(notGToolkit) ]
