*magritte-tests-seaside
magritteTestsSeaside
	^ self new
		name: 'Magritte-Tests-Seaside';
		description: 'Unit tests for Seaside integration with Magritte metamodel.';
		addDependency: 'Magritte-Seaside';
		url: #magritteUrl;
		yourself