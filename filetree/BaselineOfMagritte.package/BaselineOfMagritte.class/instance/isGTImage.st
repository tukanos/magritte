testing
isGTImage
	| packageOrg |
	packageOrg := (Smalltalk at: #'RPackageOrganizer' ifAbsent: [ nil ])
		ifNil: [ ^ self packageOrganizer packageNames anySatisfy: [ :pn | pn beginsWith: 'Lepiter-' ] ]
		ifNotNil: [ ^ RPackageOrganizer default packageNams anySatisfy: [ :pn | pn beginsWith: 'Lepiter-' ] ]
	"Implementation note: used to check for GToolkit prefix, but P7 has a GToolkit-Examples package. Lepiter, OTOH, could only be loaded in a GT image"