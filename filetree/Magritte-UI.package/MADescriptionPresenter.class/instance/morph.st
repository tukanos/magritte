accessing
morph
	^ view ifNil: [ view := self buildMorph ]