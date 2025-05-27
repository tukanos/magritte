accessing
example
	<gtExample>
	^ self
		given: [ self new ]
		when: [ :macro |
			| op |
			op := MAPatchOperation example.
			macro operations
				add: op;
				add: (MAPatchOperation example2 receiver: op receiver; yourself).
			macro ]
		then: [ :macro |
			macro operations size should equal: 2 ]