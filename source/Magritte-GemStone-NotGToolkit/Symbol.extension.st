Extension { #name : 'Symbol' }

{ #category : '*Magritte-GemStone-NotGToolkit' }
Symbol >> cull: receiverObject cull: argumentObject [ 
	^ receiverObject perform: self withEnoughArguments: { argumentObject }
]
