accessing
popupList
	"Adapted from BrDropdownExamples>>#popupList"

	"listElement ifNotNil: [ ^ listElement ]."

	| list |
	list := BrSimpleList new.
	^ list
		aptitudeDo:
				[ :aLook | aLook listElement constraintsDo: [ :c | c maxHeight: 200 ] ];
		layout: BlLinearLayout vertical;
		padding: (BlInsets all: 5);
		vFitContent;
		hExact: 200;
		itemStencil: [ BrLabel new
				aptitude:
					BrGlamorousLabelAptitude new
						+
							(BrStyleCommonAptitude new
								selected: [ :aStyle | aStyle background: Color veryVeryLightGray ]);
				padding: (BlInsets all: 5);
				"hMatchParent;"
				addEventHandlerOn: BlClickEvent
					do: [ :evt | self handleSelection: evt target ];
				yourself ];
		itemDataBinder: [ :eachElement :eachItem :eachIndex | 
			| displayString |
			eachElement userData at: #item put: eachItem.
			displayString := self itemDescription toString: eachItem.
			eachElement text: displayString ];
		items: self items;
		yourself