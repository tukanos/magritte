*magritte-pharo-model
magritteTimeStampIfAbsent: absentBlock
	"Return the TimeStamp class, or if the platform does not have a TimeStamp
	return the result of evaluating absentBlock."
	
	^ DateAndTime