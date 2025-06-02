testing
isGTImage
	(self class respondsTo: #packageOrganizer) ifFalse: [ ^ false ].
	"All versions of Pharo used by GT support this method"
	^ self class packageOrganizer packageNames anySatisfy: [ :pn | pn beginsWith: 'Lepiter-' ]
	"Implementation note: used to check for GToolkit prefix, but P7 has a GToolkit-Examples package. Lepiter, OTOH, could only be loaded in a GT image"