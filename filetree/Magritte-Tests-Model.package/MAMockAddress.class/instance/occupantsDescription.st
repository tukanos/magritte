acessing-magritte
occupantsDescription
	<magritteDescription>
	^ MAToManyRelationDescription new
		accessor: #occupants;
		classes: String withAllSubclasses;
		yourself