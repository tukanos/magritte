*magritte-model
magritteDescriptionBuilders
	|builderPragmas container|
	builderPragmas := Pragma allNamed: #magritteBuilder from: self class to: Object.
	builderPragmas ifEmpty: [ ^nil ].
	container := MAComposedDescriptionBuilder new.
	builderPragmas do: [ :pragma |
		|bld |
		pragma method numArgs = 0 ifTrue: [ 
			bld := self perform: pragma method selector.
			bld ifNotNil: [ container add: bld ] ] ].
	^container