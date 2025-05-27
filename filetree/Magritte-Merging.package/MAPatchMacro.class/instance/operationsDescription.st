accessing-magritte
operationsDescription
	<magritteDescription>
	<gtInspectorPresentationOrder: 1>
	^ MAToManyRelationDescription new
		accessor: #operations;
		classes: { MAPatchOperation };
		default: OrderedCollection new;
		yourself