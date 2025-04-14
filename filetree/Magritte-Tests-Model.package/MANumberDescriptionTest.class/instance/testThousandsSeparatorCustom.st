private
testThousandsSeparatorCustom
	
	self 
		assert: (self description
			thousandsSeparator: $.;
			fromString: '20.000')
		equals: 20000 "By default, commas should be ignored"