accessing
compiledMethod
	^ self methodClass
		ifNotNil: [ :aClass | aClass >> self methodSelector asSymbol ]