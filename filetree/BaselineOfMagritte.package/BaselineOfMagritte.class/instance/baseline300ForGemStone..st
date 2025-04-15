baselines
baseline300ForGemStone: spec
	spec
		for: #gemstone
		do: [ 
			spec
				baseline: #'Metacello'
				with: [ 
					spec
						loads: #('Core');
						repository: 'github://Metacello/metacello-work:gs_port/repository' ].
			spec
				package: #'Magritte-Model'
					with: [ 
							spec
								requires: #(#'Metacello');
								includes: #(#'Magritte-GemStone-Model') ];
				package: #'Magritte-Tests-Model' with: [ spec includes: #('Magritte-Tests-GemStone-Model') ];
				package: #'Magritte-Seaside' with: [ spec includes: #(#'Magritte-GemStone-Seaside') ];
				package: #'Magritte-GemStone-Model' with: [ spec requires: #(#'Magritte-Model') ];
				package: #'Magritte-Tests-GemStone-Model' with: [ spec requires: #(#'Magritte-GemStone-Model') ];
				package: #'Magritte-GemStone-Seaside' with: [ spec requires: #(#'Magritte-Seaside') ] ]