private-building
buildMorphView

	^ SpDatePresenter new
		  display: [ :e | self magritteDescription toString: e ];
		  date: self value;
		  whenDateChanged: [ :newDate | self value: newDate ];
		  build