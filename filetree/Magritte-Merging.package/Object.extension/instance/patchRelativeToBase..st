*Magritte-Merging
patchRelativeToBase: baseName 

	| operations relevantFields relevantOperations |
	relevantFields := self magritteDescription children select: #shouldMerge.
	operations := relevantFields collect: [ :desc | desc patch: self relativeTo: baseName ].
	relevantOperations := operations reject: #isEmptyOrNil.
	^ MAPatchMacro new
		operations: relevantOperations;
		yourself