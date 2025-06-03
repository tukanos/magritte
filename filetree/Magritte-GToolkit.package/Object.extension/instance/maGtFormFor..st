*magritte-gToolkit
maGtFormFor: aView
	<gtView>
	| description |
	
	"Cache the description because this can be expensive and we want the view to be fast not to break the debugging workflow"
	description := self magritteDescription.
	
	(description isContainer not or: [ description isEmpty ]) ifTrue: [ ^ aView empty ].
	^ aView explicit
		title: 'Magritte';
		priority: 50;
		stencil: [ ((description elementBuilderFor: self) addButtons; element) asScrollableElement ];
		actionButtonIcon: BrGlamorousVectorIcons inspect
		  label: 'Memento'
		  tooltip: 'Inspect Memento'
		  action: [ :aButton :aTab | 
		  	aTab viewContentElement
				  allChildrenBreadthFirstDetect: [ :anElement | 
					  anElement userData includesKey:
							  #magrittePresenter ]
				  ifFound: [ :anElement | 
				  	| memento |
				  	memento := (anElement userData at: #magrittePresenter) memento.
					  aButton phlow spawnObject: memento ] ];
		actionUpdateButton.