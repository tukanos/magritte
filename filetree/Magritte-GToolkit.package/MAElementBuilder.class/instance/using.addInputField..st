private
using: aDescription addInputField: aValuable
	| labelElement "diffElement" inputElement labelString headerElement |
	aDescription isVisible ifFalse: [ ^ self ].

	labelString := aDescription label.
	aDescription isRequired ifTrue: [ labelString := labelString , ' *' ].

	labelElement := BrLabel new
		text: labelString asRopedText bold;
		addEventHandlerOn: BlClickEvent
			do: [ :evt | evt target phlow spawnObject: (aDescription read: self object) ];
		aptitude: BrGlamorousLabelAptitude.
			
	headerElement := BrHorizontalPane new
		fitContent;
		margin: (BlInsets all: 3);
		addChild: labelElement;
		yourself.

	inputElement := (aValuable cull: headerElement)
		margin: (BlInsets top: 2 bottom: 10);
		yourself.

	labelElement
		constraintsDo: [ :c | 
			c vertical fitContent.
			c horizontal fitContent.
			c grid vertical alignCenter.
			c grid horizontal alignRight ].

	aDescription hasComment
		ifTrue: [ self addTooltip: aDescription comment to: headerElement.
			self addTooltip: aDescription comment to: inputElement ].	"diffElement := BrEditor new
		text: inputElement text copy; ""if we don't copy, diff magically changes as input updates"	"aptitude: BrGlamorousEditorAptitude"

	self form addChild: headerElement.
	self form addChild: inputElement	"self form addChild: diffElement."