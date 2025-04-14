accessing
defaultLabelFor: aDescription
	^ (self accessor defaultLabelFor: aDescription), '::', (super defaultLabelFor: aDescription)