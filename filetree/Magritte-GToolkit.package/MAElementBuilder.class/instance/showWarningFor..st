accessing
showWarningFor: headerElement

	headerElement
		childNamed: #icon 
		ifFound: [ :oldIcon | 
			headerElement
				replaceChild: oldIcon
				with: self warningIcon
				as: #icon ]
		ifNone: [ headerElement addChild: self warningIcon as: #icon ]