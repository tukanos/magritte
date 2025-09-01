*magritte-gemstone-notgtoolkit
cull: receiverObject cull: argumentObject 
	^ receiverObject perform: self withEnoughArguments: { argumentObject }
