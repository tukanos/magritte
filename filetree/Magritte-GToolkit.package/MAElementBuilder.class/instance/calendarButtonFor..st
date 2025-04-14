private
calendarButtonFor: editor
	"Adapted from GtSpotterDropdownButtonStencil>>#create"

	| dropdownAptitude |
	dropdownAptitude := BrGlamorousWithDropdownAptitude
		handle: [ 
			BrButton new
				icon: BrGlamorousVectorIcons note;
				aptitude: BrGlamorousButtonWithIconAptitude - BrGlamorousButtonWithLabelTooltipAptitude
						- BrGlamorousButtonExteriorAptitude ]
		content: [ | calendar date |
			date := [ editor text asString asDate ] on: Error do: [ Date today ].
			calendar := GtCalendarElement forDate: date.
			calendar
				when: GtCalendarDateClickedEvent
				do: [  "calendar date: event date. Redundant because a new calendar will be created on next button click":event | 
					editor
						beEditable;
						text: event date mmddyyyy asRopedText.
					calendar fireEvent: BrDropdownHideWish new ] ].

	^ BrButton new
		icon: BrGlamorousVectorIcons note;
		label: 'Pick from calendar';
		aptitude: BrGlamorousButtonWithIconAptitude;
		addAptitude: dropdownAptitude;
		yourself