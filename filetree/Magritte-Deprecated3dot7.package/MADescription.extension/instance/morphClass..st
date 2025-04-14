*Magritte-Deprecated3dot7
morphClass: aClass
			self deprecated: 'Send message morphicClass:' transformWith: '`@receiver morphClass: `@argument' -> '`@receiver morphicClass: `@argument'.
	^ self morphicClass: aClass