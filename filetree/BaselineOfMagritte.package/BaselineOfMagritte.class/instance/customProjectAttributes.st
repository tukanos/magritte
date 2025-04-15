accessing
customProjectAttributes
	spec for: #(#'pharo7.x' #'pharo8.x' #'pharo9.x' #'pharo10.x' #'pharo11.x' #'pharo12.x' #'pharo13.x') do: [
		^ self isGTImage
				ifFalse: [ #(notGToolkit) ]
				ifTrue: [ #(GToolkit) ]
	]