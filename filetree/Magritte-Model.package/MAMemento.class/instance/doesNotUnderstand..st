reflective operations
doesNotUnderstand: aMessage
  ^ self magritteDescription children 
  	detect: [ :desc | desc handlesSelector: aMessage selector ] 
  	ifFound: [ :desc | desc handleMessage: aMessage for: self ]
  	ifNone: [ super doesNotUnderstand: aMessage ]