private
displayCurrentValue

	| displayString |
	displayString := self magritteDescription toString: self value.
	self currentValueMorph contents: displayString.