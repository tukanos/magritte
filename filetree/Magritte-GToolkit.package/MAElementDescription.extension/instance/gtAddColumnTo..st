*magritte-gToolkit
gtAddColumnTo: aView

	self 
		propertyAt: #columnWidth
		ifPresent: [ :width |
			aView 
				column: self label 
					text: [ :anObj | self readToString: anObj ]
					width: width.
			^ self ].
			
	self 
		propertyAt: #columnWeight
		ifPresent: [ :weight |
			aView 
				column: self label 
					text: [ :anObj | self readToString: anObj ]
					weight: weight.
			^ self ].
			
	aView 
		column: self label 
			text: [ :anObj | self readToString: anObj ]