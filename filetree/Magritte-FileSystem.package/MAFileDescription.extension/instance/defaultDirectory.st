*Magritte-FileSystem
defaultDirectory

	^ self propertyAt: #defaultDirectory ifAbsent: [ MAFileSystem imageDirectory ].