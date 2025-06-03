Extension { #name : 'GRGemStonePlatform' }

{ #category : '*Magritte-Gemstone-Model' }
GRGemStonePlatform >> magritteAllSubInstancesOf: aClass do: aBlock [
	"Evaluate the aBlock for all instances of aClass and all its subclasses."

	aClass allSubInstancesDo: aBlock
]

{ #category : '*Magritte-Gemstone-Model' }
GRGemStonePlatform >> magritteClassNamed: aString [
	"Return the class named aString, nil if the class can't be found."

	^ Smalltalk classNamed: aString
]

{ #category : '*Magritte-Gemstone-Model' }
GRGemStonePlatform >> magritteColorClass [
	"Return a Color class"

	^ Color
]

{ #category : '*Magritte-Gemstone-Model' }
GRGemStonePlatform >> magritteEvaluatorClassFor: aClass [
	"Answer an evaluator class appropriate for evaluating expressions in the 
	context of this class."
	
	^ Object

]

{ #category : '*Magritte-Gemstone-Model' }
GRGemStonePlatform >> magritteTimeStampClass [
	"Return the platform's TimeStamp class. It is currently assumed that all platforms
	have one, though this may not be correct and could require moving timestamp stuff
	to its own package in order to resolve."
	
	^ TimeStamp

]

{ #category : '*Magritte-Gemstone-Model' }
GRGemStonePlatform >> magritteTimeStampIfAbsent: absentBlock [
	"Return the TimeStamp class, or if the platform does not have a TimeStamp
	return the result of evaluating absentBlock."
	
	^ TimeStamp

]

{ #category : '*Magritte-Gemstone-Model' }
GRGemStonePlatform >> magritteUniqueObject [
	"Answer a random object, such as a UUID, that is extremely likely to
	be unique over space and time."

	^ ByteArray withAll: UUID new

]
