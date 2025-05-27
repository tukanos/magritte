*Magritte-GToolkit
gtAction: aValuable
	"aValuable - optional arguments:
		- aGtPhlowNoAction (same as the argument to a standard GT action method)
		- the receiver. Although it is available in the description creation method, it is a best practice not to use self in descriptions because descriptions are designed to be late bindable to any compatible object
		- this description"
		
	self flag: 'RE the last argument NB, the receiver SHOULD be passed, because descriptions are designed to be independent of model and applied to any compatible'.

	^ self propertyAt: #gtAction put: aValuable