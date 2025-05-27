accessing
operationsGtViewFor: aView
	<gtView>
	
	^ aView list
		title: 'Operations';
		priority: 35;
		items: [ self operations ]