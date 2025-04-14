accessing
elementGtViewFor: aView
	<gtView>
	^ aView explicit
		title: 'Element';
		priority: 25;
		stencil: [ self asElement asScrollableElement ]