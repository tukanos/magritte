accessing
initializeCompletion

	self elementDescription propertyAt: #completions ifPresent: [ :comps |
		| compStrings compStrat |
		compStrings := comps value: self builder object.
		compStrat := self builder completionStrategy 
			completions: (GtPrefixTree withAll: compStrings);
			yourself.
		(self builder completionControllerClass on: self strategy: compStrat)
			showOnTextModification: true;
			install ].