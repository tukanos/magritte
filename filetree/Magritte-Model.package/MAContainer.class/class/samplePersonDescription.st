example support
samplePersonDescription
	^ MAPriorityContainer
		withAll:
			{(MAStringDescription new
				accessor: (MADictionaryAccessor key: #name);
				yourself).
			(MAStringDescription new
				accessor: (MADictionaryAccessor key: #birthplace);
				yourself)}