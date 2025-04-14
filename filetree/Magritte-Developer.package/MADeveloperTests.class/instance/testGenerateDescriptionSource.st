accessing
testGenerateDescriptionSource

	| desc |
	desc := MANumberDescription new
		default: 5;
		yourself.
		
	self
		assert: desc storeString
		equals: 'MANumberDescription new
	default: 5;
	yourself'