*magritte-fileSystem
defaultDirectory

	^ self propertyAt: #defaultDirectory ifAbsent: [ MAFileSystem imageDirectory ].