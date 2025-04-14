accessing
validate
	[ 
		self elementDescription
			writeFromString: self text greaseString
			to: self builder memento.
		self elementDescription
			validate: (self builder memento readUsing: self elementDescription).
		self builder showValidationPassFor: self header 
	]
		on: MAReadError, MAMultipleErrors
		do: [  "on: MAMultipleErrors
	  		do: [ :err |
	  			self errors: err.
	  			self border: self errorBorder ]":err | 
			self errors: true.
			self builder showWarningFor: self header ]