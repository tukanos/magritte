*magritte-deprecated3dot7
readonly: aBoolean
	self 
		deprecated: 'Use #readOnly: instead.' 
		on: '2020-01-23'
		in: #'v3.7'
		transformWith: '`@receiver readonly:' 
						-> '`@receiver readOnly:'.
		^ self readOnly: aBoolean