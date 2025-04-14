private
alreadyIncludesMagritteSelectors: parseTree
	^ parseTree pragmas anySatisfy: [ :each | MAPragmaBuilder magritteSelectors includes: each selector ]