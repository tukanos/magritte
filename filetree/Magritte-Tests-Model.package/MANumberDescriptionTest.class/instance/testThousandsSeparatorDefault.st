private
testThousandsSeparatorDefault
	
	"self assert: (self description fromString: '') isNil description: 'Empty string should be parsed to nil'."
	self 
		assert: (self description fromString: '20,000')
		equals: 20000 "By default, commas should be ignored"