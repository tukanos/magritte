tests
testSelector
	self assert: self accessor accessor selector equals: #holder.
	self assert: self accessor next accessor selector equals: #contents.
	self assert: self accessor next next selector equals: #value