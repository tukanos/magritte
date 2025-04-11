Once you have settled on a money library, make the class it uses to model money my ==#defaultKind== via ${method:MAMoneyDescription class>>#defaultKind:}$

! Instance Creation of Money

!! Money Library
Money decoded from a string uses a float for the amount. See class comment for more info. For other e.g. ScaledDecimal precision, create and set a custom string reader which implements ==#visitMoneyDescription:== with something like this:
[[[language=smalltalk
	^ Money amount: (ScaledDecimal readFrom: (self copyWithout: $,)) currency: #USD
]]]