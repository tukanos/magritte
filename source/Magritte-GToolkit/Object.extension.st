Extension { #name : 'Object' }

{ #category : '*Magritte-GToolkit' }
Object >> descriptionBrowse: aDescription [
	<magritteActionDescription: #descriptionBrowse>
	"Redundant because already provided by GToolkit"
	^ nil
]

{ #category : '*Magritte-GToolkit' }
Object >> descriptionFuelOut: desc [
	<magritteActionDescription: #descriptionFuelOut>
	^ desc
			gtIcon: [ BrGlamorousIcons savetodisk ];
			yourself
]

{ #category : '*Magritte-GToolkit' }
Object >> descriptionInspect: aDescription [
	<magritteActionDescription: #descriptionInspect>
	"Redundant because already provided by GToolkit"
	^ nil
]

{ #category : '*Magritte-GToolkit' }
Object >> gtActionsInContext: aPhlowContext [
	"Hack to extend GToolkit's actions. The GT mechanism is in ProtoObject, which is the only class we miss by hooking in here"
	| magritteGToolkitActions |
	magritteGToolkitActions := self magritteActions collect: [ :desc | desc gtActionOf: self ].
	^ (super gtActionsInContext: aPhlowContext), magritteGToolkitActions
]

{ #category : '*Magritte-GToolkit' }
Object >> gtViewsInContext: aContext [
	
	| magritteGToolkitViews views |
	magritteGToolkitViews := MaGtPhlowViewsCollector new
		fromObject: self;
		context: aContext;
		collect.
	
	views := (super gtViewsInContext: aContext), magritteGToolkitViews.
	
	self flag: 'This is duplicated work because each collector did its own sort, but we do it here for now because it made the MA collector implementation simpler'.
	GtPhlowUtility sortByPriority:views.
	
	^ views
]

{ #category : '*Magritte-GToolkit' }
Object >> maGtFormFor: aView [
	<gtView>
	| description |
	
	"Cache the description because this can be expensive and we want the view to be fast not to break the debugging workflow"
	description := self magritteDescription.
	
	(description isContainer not or: [ description isEmpty ]) ifTrue: [ ^ aView empty ].
	^ aView explicit
		title: 'Magritte';
		priority: 50;
		stencil: [ 
			| builder |
			builder := description elementBuilderFor: self.
			builder addButtons.
			builder toolbar children do: [ :button |
				| currentAction |
				currentAction := button action.
				button action: [ 
					currentAction value.
					button phlow firstParentWithViewContent phlow update ] ].
			builder element asScrollableElement. ];
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
]

{ #category : '*Magritte-GToolkit' }
Object >> magritteElementBuilder [
	^ self magritteDescription elementBuilderFor: self
]
