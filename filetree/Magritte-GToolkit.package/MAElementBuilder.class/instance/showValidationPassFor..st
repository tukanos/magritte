accessing
showValidationPassFor: headerElement

	headerElement
		childNamed: #icon 
		ifFound: [ :oldIcon | 
			headerElement
				replaceChild: oldIcon
				with: self checkIcon
				as: #icon ]
		ifNone: [ headerElement addChild: self checkIcon as: #icon ]