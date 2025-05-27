accessing
print: anObject on: aStream

	"Print the current values of all anObject's described fields. Your can customize:
		1) the printing of a field via the #maPrintString property, which should store a valuable with the value of the field as an optional argument
		2) the field separator, via the maPrintStringSeparator property, which should store a valuable whose optional argument is the stream, and which should put separator thereon"

	| separatorBlock |
	separatorBlock := self
		propertyAt: #maPrintStringSeparator
		ifAbsent: [ [ aStream space ] ].
	
	self
		do: [ :d | 
			| value |
			value := d read: anObject.
			value ifNotNil: [ | stringValue |
				stringValue := d
					propertyAt: #maPrintString
					ifPresent: [ :map | map cull: value ]
					ifAbsent: [ d toString: value ].
				aStream nextPutAll: stringValue ] ]
		separatedBy: [ separatorBlock cull: aStream ]