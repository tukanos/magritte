accessing-properties
display: aBlockOrSymbol
	"Transform how the model is converted to a string.
	aSymbol
		- is performed on the object
		- can optionally take the description as an argument
	aBlock
		- takes two optional arguments: the domain object and its description
		- returns the string to display
	
	NB. This string may be used to convert back to a domain object, so make sure it is suitable via the string reader in use."
	self propertyAt: #displayBlockOrSymbol put: aBlockOrSymbol.