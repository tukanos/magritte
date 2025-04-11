testing
isGTImage
	| packageOrg |
	packageOrg := Smalltalk
		at: #'RPackageOrganizer'
			ifPresent: [ :cls | cls default ]
			ifAbsent: [ self packageOrganizer ].
	^ packageOrg packageNames anySatisfy: [ :pn | pn beginsWith: 'Lepiter-' ].
	"Implementation note: used to check for GToolkit prefix, but P7 has a GToolkit-Examples package. Lepiter, OTOH, could only be loaded in a GT image"