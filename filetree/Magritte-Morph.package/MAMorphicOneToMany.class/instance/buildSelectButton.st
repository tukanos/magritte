private
buildSelectButton
	^ self theme builder
		newButtonFor: self
		action: #add
		label: 'Add'
		help: ''