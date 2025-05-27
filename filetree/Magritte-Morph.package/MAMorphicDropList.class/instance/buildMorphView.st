private-building
buildMorphView

	^ SpDropListPresenter new
		  items: self options;
		  display: [ :e | 
			  e
				  ifNil: [ '' ]
				  ifNotNil: [ self magritteDescription reference toString: e ] ];
		  selectItem: self value;
		  whenSelectedItemChangedDo: [ :e | self value: e ];
		  build