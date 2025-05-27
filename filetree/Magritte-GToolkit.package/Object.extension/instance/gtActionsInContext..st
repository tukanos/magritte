*Magritte-GToolkit
gtActionsInContext: aPhlowContext
	"Hack to extend GToolkit's actions. The GT mechanism is in ProtoObject, which is the only class we miss by hooking in here"
	| magritteGToolkitActions |
	magritteGToolkitActions := self magritteActions collect: [ :desc | desc gtActionOf: self ].
	^ (super gtActionsInContext: aPhlowContext), magritteGToolkitActions