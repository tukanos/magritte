tests-testing
testCanRead
	self assert: (self accessor canRead: self).
	self accessor next accessor readSelector: #zork.
	self deny: (self accessor canRead: self)