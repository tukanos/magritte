Extension { #name : 'WAPresenter' }

{ #category : '*Magritte-Seaside' }
WAPresenter >> requiresMultipartForm [
	"Answer true if the receiving component or one of its children requires a multipart form."

	^ self children anySatisfy: [ :each | each requiresMultipartForm ]
]
