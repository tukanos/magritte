accessing
textUsing: aDescription
	| valueString |
	valueString := aDescription readToString: self memento.
	^ valueString asRopedText glamorousRegularFont