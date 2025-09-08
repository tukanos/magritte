tests
testAsMultilineString
	| expectedResult |
	expectedResult := 'a', Character cr, 'b', Character cr, 'c'.
	self
		assert: #( a b c ) asMultilineString equals: expectedResult;
		assert: 'abc' asMultilineString equals: expectedResult