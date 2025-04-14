accessing
initializeListeners

	"Handle typed in text"
	self editor
		when: BrTextEditorModifiedEvent
		do: [ :evt | self validate ].
	
	"Handle directly-set text e.g. `text: aText`"
	self
		when: BrEditorTextChanged
		do: [ :evt | self validate ]