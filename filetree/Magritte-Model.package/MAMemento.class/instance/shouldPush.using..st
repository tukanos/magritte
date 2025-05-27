private-testing
shouldPush: anObject using: aDescription

	| modelValue |
	modelValue := self model readUsing: aDescription.
	^ aDescription shouldWrite: anObject over: modelValue.