class membership
isKindOf: aClass
	"This is to pass #validateKind:"
	^ (super isKindOf: aClass) or: [ self kind = aClass ]