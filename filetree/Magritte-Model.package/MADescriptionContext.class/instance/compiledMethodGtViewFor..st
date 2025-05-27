accessing
compiledMethodGtViewFor: aView
	 <gtView>
		
	^ aView forward
		title: 'Method';
		priority: 10;
		object: [ self compiledMethod ];
		view: #gtSourceFor: