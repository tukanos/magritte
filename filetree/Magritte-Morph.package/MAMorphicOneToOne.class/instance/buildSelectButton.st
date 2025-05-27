private
buildSelectButton
	^ self theme builder
		newButtonFor: self
		action: #create
		label: 'Create'
		help: ''