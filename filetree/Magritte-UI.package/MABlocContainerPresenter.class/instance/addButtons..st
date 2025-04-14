decorating
addButtons: anArray
	view := self rectangleMorph
		addMorphBack: self morph;
		addMorphBack: (self barMorph: anArray);
		yourself