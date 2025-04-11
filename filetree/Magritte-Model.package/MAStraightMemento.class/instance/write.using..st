private
write: anObject using: aDescription
	(self shouldPush: anObject using: aDescription) ifFalse: [ ^ self ].
	self model write: anObject using: aDescription