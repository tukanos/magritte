tests-testing
testCanWrite
	self assert: (self accessor canWrite: self).
	self accessor next accessor writeSelector: #zork.
	self deny: (self accessor accessor canWrite: self)