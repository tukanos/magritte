private
buildButton: aSymbol
	^ self theme builder
		newButtonFor: self
		action: aSymbol
		label: aSymbol capitalized
		help: ''