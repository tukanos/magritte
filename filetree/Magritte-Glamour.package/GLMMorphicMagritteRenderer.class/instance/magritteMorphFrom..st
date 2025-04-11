rendering
magritteMorphFrom: aMagrittePresentation
	| toShow description magritteMorph magritteDescriptionMorph |
	toShow := aMagrittePresentation displayValue.
	description := (aMagrittePresentation magritteDescription
		glamourValue: toShow) copy.
	"Using MAContainerMorph can raise some problems, as it try to delete morphs after commiting. We don't want this behavior."
	description morphicClass = MAMorphicContainer
		ifTrue: [ description morphicClass: MAMorphicSilentContainer ].
	magritteDescriptionMorph := (description asMorphOn: toShow)
		onAnswer: [ :value | aMagrittePresentation reactOnAnswerFor: value ].
	magritteMorph := magritteDescriptionMorph
		addButtons;
		morph.
	magritteMorph
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		layoutChanged.
	^ magritteMorph