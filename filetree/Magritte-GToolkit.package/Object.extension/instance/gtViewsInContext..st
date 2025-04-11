*Magritte-GToolkit
gtViewsInContext: aContext
	
	| magritteGToolkitViews views |
	magritteGToolkitViews := MaGtPhlowViewsCollector new
		fromObject: self;
		context: aContext;
		collect.
	
	views := (super gtViewsInContext: aContext), magritteGToolkitViews.
	
	self flag: 'This is duplicated work because each collector did its own sort, but we do it here for now because it made the MA collector implementation simpler'.
	GtPhlowUtility sortByPriority:views.
	
	^ views