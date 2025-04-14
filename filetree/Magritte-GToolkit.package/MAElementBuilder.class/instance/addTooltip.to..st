accessing
addTooltip: aString to: anElement
	| look |
	self
		flag:
			'Didn''t do `BrGlamorousWithTooltipLook content:` due to bug reported on GT discord feedback channel 12/21/2020'.
	look := BrGlamorousWithTooltipAptitude new
		contentStencil: [ BrLabel new
				aptitude: BrGlamorousLabelAptitude new glamorousRegularFontAndSize;
				padding: (BlInsets all: 2);
				text: aString;
				alignCenter ].
	anElement addAptitude: look