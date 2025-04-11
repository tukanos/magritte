actions
collect
	<return: #Array of: #GtPhlowView>
	<gtCollector>
	| theViews |
	theViews := self collectPragmas
		collect: [ :eachPragma | 
			| aView |
			aView := GtPhlowView empty 
				maOn: self object 
				perform: eachPragma methodSelector
				withContext: self context.
			self object gtActions do: [ :eachAction | 
				(eachAction target isForViewDefinedIn: eachPragma methodSelector) ifTrue: [ 
					aView addPhlowAction: eachAction ] ].
			aView ].
	self sortByPriority: theViews.
	^ theViews