validation-private
validateKind: aClass
	"Validate ==aClass== to be of the right kind."
	((self isKindOf: aClass) or: [ self kind = aClass ])
		ifFalse: [ MAKindError description: self signal: self kindErrorMessage ]