*magritte-gToolkit
gtIcon
	^ self propertyAt: #gtIcon ifPresent: [ :i | i value ].
	"Implementation note: see setter"