validation-private
validateKind: aClass
	"Validate ==aClass== to be of the right kind."
	((aClass isKindOf: self kind) or: [ aClass = self kind ])
		ifFalse: [ MAKindError description: self signal: self kindErrorMessage ]