tests-identity
testStore
	| evaluator |
	evaluator := GRPlatform current
		magritteEvaluatorClassFor: self actualClass.
	GRPlatform current isGRGemStonePlatform ifTrue: [ self assert: (evaluator evaluate: self accessor storeString) = self accessor ]
		ifFalse: [ self assert: (evaluator new 
									source: self accessor storeString;
									evaluate) = self accessor ]