accessing-defaults
defaultKind: aClass
	"This is a hook so one can choose any Money library. An alternative would be to allow the chosen library to implement #defaultKind as an extension method and remove this setter, but that would dirty packages if multiple libraries were loaded simultaneously (not sure how much that matters in practice, especially since each of my instances can specify their kind)"
	DefaultMoneyClass := aClass