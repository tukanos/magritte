tests
testKind
	self assert: self accessor class equals: MAChainAccessor.
	self assert: self accessor accessor class equals: MASelectorAccessor.
	self assert: self accessor next class equals: MAChainAccessor.
	self assert: self accessor next accessor class equals: MASelectorAccessor.
	self assert: self accessor next next class equals: MASelectorAccessor