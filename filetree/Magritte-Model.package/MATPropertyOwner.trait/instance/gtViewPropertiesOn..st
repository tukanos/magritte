accessing
gtViewPropertiesOn: aView
	<gtView>

	self properties ifEmpty: [ ^ aView empty ].

	^ aView columnedList
		title: 'Properties' translated;
		priority: 75;
		items: [ self properties associations ];
		column: 'Name'
			text: [ :a | a key ]
			width: 75;
		column: 'Value' text: [ :a | a value ];
		send: [ :e | e value ];
		actionUpdateButton