private
pull
	"Utility method to pull the model into a dictionary mapping descriptions to values. nil values are replaced with the default ones of the model."

	| result |
	result := self pullRaw.
	self cookRawPull: result.
	^ result