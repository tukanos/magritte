tests
testAsMultilineString
	| expectedResult |
	expectedResult := 'a
b
c'.
	self
		assert: #( a b c ) asMultilineString equals: expectedResult;
		assert: 'abc' asMultilineString equals: expectedResult