Extension { #name : 'MAFileModel' }

{ #category : '*Magritte-Seaside-Rendering' }
MAFileModel >> renderOn: html [
	"Renders a download link of the receiver."

	html anchor
		title: (String streamContents: [ :stream |
			stream nextPutAll: self filename; nextPutAll: ' ('.
			stream nextPutAll: self filesize asFileSize; nextPutAll: ', '.
			stream nextPutAll: self mimetype; nextPut: $) ]);
		url: self url;
		with: self filename
]

{ #category : '*Magritte-Seaside-Accessing' }
MAFileModel >> url [
	"Answer a link to a request handler for the given file."
	| handler |
	handler := MAFileModelHandler on: self.
	^ WACurrentRequestContext value registry
		register: handler;
		urlFor: handler
]

{ #category : '*Magritte-Seaside-Accessing' }
MAFileModel >> urlFor: aRenderContext [ 
	self 
		greaseDeprecatedApi: 'MAFileModel>>#urlFor:'
		details: 'Use MAFileModel>>#url.'.
	^ self url
]

{ #category : '*Magritte-Seaside-Accessing' }
MAFileModel >> urlOn: html [ 
	self 
		greaseDeprecatedApi: 'MAFileModel>>#urlOn:'
		details: 'Use MAFileModel>>#url.'.
	^ self url
]
