fileformat utf8
set sourcestringclass Unicode16

set compile_env: 0
! ------------------- Trait definition for TMagritteBootstrap
expectvalue /Trait
doit
Trait name: 'TMagritteBootstrap'
  instVars: #()
  classVars: #()
  classInstVars: #()
  inDictionary: UserGlobals

%
! ------------------- Remove existing behavior from TMagritteBootstrap
trremoveallmethods TMagritteBootstrap
trremoveallclassmethods TMagritteBootstrap
! ------------------- Class methods for TMagritteBootstrap
! ------------------- Instance methods for TMagritteBootstrap
category: 'reflective operations'
trmethod: TMagritteBootstrap
doesNotUnderstand: aMessage
	^ self magritteDescription 
			detect: [ :d | d accessor handlesSelector: aMessage selector ]
			ifFound: [ :handler | handler handleMessage: aMessage for: self ]
			ifNone: [ super doesNotUnderstand: aMessage ].
%