baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ 
			spec author: 'SeanDeNigris'.
			spec timestamp: '2015-04-05'.
			spec description: 'For pharo4.x, add Magritte-GT package and add it to the default group'.
			self baseline310CommonExtDeps: spec.
			spec
				package: #'Magritte-Model' with: [ 
					spec 
						requires: #(#'Grease');
						includes: #(#'Magritte-Deprecated3dot7') ];
				package: #'Magritte-Deprecated3dot7' with: [ spec requires: #(#'Magritte-Model' #'Magritte-Morph') ];
				package: #'Magritte-Tests-Model' with: [ spec requires: #(#'Magritte-Model') ];
				package: #'Magritte-Tests-Files-Model' with: [ spec requires: #(#'Grease' #'Magritte-Tests-Model') ];
				package: #'Magritte-Seaside' with: [ spec requires: #(#'Magritte-Model' #'Seaside3') ];
				package: #'Magritte-Bootstrap' with: [ spec requires: #(#'Magritte-Model') ];
				package: #'Magritte-Deprecated' with: [ spec requires: #(#'Magritte-Model') ];
				package: #'Magritte-Merging' with: [ spec requires: #(#'Magritte-Model') ];
				package: #'Magritte-Money' with: [ spec requires: #(#'Magritte-Model') ].
			spec
				group: #'Core' with: #(#'Magritte-Model');
				group: #'Tests' with: #(#'Magritte-Tests-Files-Model');
				group: #'Seaside' with: #(#'Magritte-Seaside');
				group: #'Deprecated' with: #(#'Magritte-Deprecated') ].
	spec for: #(#'pharo7.x' #'pharo8.x' #'pharo9.x' #'pharo10.x' #'pharo11.x' #'pharo12.x' #'pharo13.x') do: [
             self baseline330ForPharo: spec ].
        spec for: #'squeak' do: [
	     self baseline330ForSqueakCommon: spec ].
        spec for: #'gemstone' do: [
	     self baseline300ForGemStone: spec ]