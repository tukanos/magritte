accessing
thousandsSeparator

	^ self 
		propertyAt: #thousandsSeparator
		ifAbsent: [ self class defaultThousandsSeparator ]