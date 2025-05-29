private
nonIdenticalInstance
	"Date in GemStone is an immediate type, in Pharo it is a DateTime wrapped in a Date.
	The only way to have non-identical instance in GemStone is to change it e.g. use maxInstance."
	(Smalltalk includesKey: #GsSession)
		ifTrue: [ ^ self maxInstance ]
		ifFalse: [ ^ super nonIdenticalInstance ]