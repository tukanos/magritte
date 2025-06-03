*magritte-glamour
glmAddSelectionActions
	self dynamicActionsOnSelection: [ :pres | 
			pres selection magritteActionDescriptions collect: #asGlmAction ]