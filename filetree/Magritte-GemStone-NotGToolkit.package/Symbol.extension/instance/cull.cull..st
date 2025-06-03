*magritte-gemStone-notGToolkit
cull: receiverObject cull: argumentObject 
	^ receiverObject perform: self withEnoughArguments: { argumentObject }
