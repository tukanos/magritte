printing
storeOn: aStream
	
	| source formattedSource |
	source := String streamContents: [ :str |
		str
			nextPutAll: self className;
			nextPutAll: ' new'; cr.
		(self magritteDescription reject: #isReadOnly) do: [ :desc |
			| value |
			value := desc read: self.
			(desc isIgnorableValue: value) ifFalse: [ 
				desc accessor store: value inDescriptionOn: str ] ].
		str nextPutAll: 'yourself' ].
		
	formattedSource := (RBParser parseExpression: source) formattedCode.
	
	aStream << formattedSource