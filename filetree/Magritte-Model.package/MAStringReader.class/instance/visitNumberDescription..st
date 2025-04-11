visiting-description
visitNumberDescription: aDescription
	| isContentsValid cleanedContents |
	cleanedContents := self contents reject: [ :e | e = aDescription thousandsSeparator ].
	isContentsValid := NumberParser isValidNumber: cleanedContents.
	isContentsValid ifFalse: [ MAReadError signal ].
	
	self stream: cleanedContents readStream.
	super visitNumberDescription: aDescription