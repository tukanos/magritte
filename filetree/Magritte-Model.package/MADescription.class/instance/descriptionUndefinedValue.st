acessing-magritte
descriptionUndefinedValue
	<magritteDescription>
	^ MAToOneRelationDescription new
		accessor: #undefinedValue;
		priority: 150;
		default: self class defaultUndefinedValue;
		yourself