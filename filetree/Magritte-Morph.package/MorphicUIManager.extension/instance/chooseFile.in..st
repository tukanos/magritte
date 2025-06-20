*magritte-morph
chooseFile: windowTitle in: directoryString
	| chooser |
	chooser := FileDialogWindow newWithTheme: Smalltalk ui theme.
	chooser
		title: windowTitle;
		selectDirectory: directoryString;
		answerFileEntry.
	^ chooser openModal answer
		ifNotNil: [ :answer | answer asFileReference ]