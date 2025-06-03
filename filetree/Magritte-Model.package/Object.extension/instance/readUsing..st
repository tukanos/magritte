*magritte-model
readUsing: aDescription
	"This hook is needed so that e.g. mementos and adaptive models can implement their own behavior. All other entry points e.g. MADescription>>#read: should come through here"

	| result |
	result := aDescription accessor read: self.
	^ result ifNil: [ aDescription undefinedValue ]