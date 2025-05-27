private
createPragma
	((selector = #descriptionContainer) or: [ selector isDescriptionExtension: #descriptionContainer ]) ifTrue: [
		^ RBPragmaNode selector: (Array with: MAPragmaBuilder containerPragma) arguments: #() ].
	
	(selector isDescriptionDefinition) ifTrue: [
		^ RBPragmaNode selector: (Array with: MAPragmaBuilder magritteDescriptionPragma) arguments: #() ].
	
	((selector isDescriptionSelector) and: [ selector numArgs = 1 ]) ifTrue: [
		| descriptionDefinitionSelector |
		
		descriptionDefinitionSelector := class allSelectors detect: [ :each | 
			each isDescriptionDefinition and: [ selector isDescriptionExtension: each ] ] ifNone: [ nil ].
		
		descriptionDefinitionSelector ifNil: [
			descriptionDefinitionSelector := class soleInstance allSelectors detect: [ :each | 
				each isDescriptionDefinition and: [ selector isDescriptionExtension: each ] ] ifNone: [ nil ] ] 
			ifNotNil: [ ^ RBPragmaNode selector: (Array with: MAPragmaBuilder magritteDescriptionExtensionPragma) arguments: (Array with: (RBLiteralValueNode value: descriptionDefinitionSelector)) ] ].		
	^ nil
