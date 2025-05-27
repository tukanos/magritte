baselines
baseline330ForPharo: spec
			
	spec for: #(#'pharo7.x' #'pharo8.x' #'pharo9.x' #'pharo10.x' #'pharo11.x' #'pharo12.x' #'pharo13.x') do: [
		spec 
			baseline: #'PharoEnhancements' with: [ spec repository: 'github://seandenigris/Pharo-Enhancements' ].
		spec
			package: #'Magritte-Developer' with: [ spec requires: #(#'Magritte-Model') ];
			package: #'Magritte-FileSystem' with: [ spec requires: #(#'Magritte-Model') ];
			package: #'Magritte-Pharo-Model';
			package: #'Magritte-Tests-Files-Model' with: [ spec requires: #(#'Magritte-FileSystem') ];
			package: #'Magritte-Tests-Model' with: [ spec includes: #(#'Magritte-Tests-Files-Model') ].
		spec group: #'default' with: #(#'Magritte-Developer') ].
	
	spec for: #(#'pharo9.x') do: [
		spec
			package: #'Magritte-Pillar' 
				with: [ spec requires: #(#'Magritte-Model') "assumes Pillar is loaded, which is the case in P9 and GT before port to P10" ] ].
			
	
	spec for: #(#'pharo7.x' #'pharo8.x' #'pharo9.x') do: [ 
		spec
			package: #'Magritte-Glamour' with: [ spec requires: #(#'Magritte-Model' #'Magritte-Morph') ];
			package: #'Magritte-GT' with: [ spec requires: #(#'Magritte-Morph' #'Magritte-Glamour') ] ].
	
	spec for: #GToolkit do: [ 
		spec 
			package: #'Magritte-Developer' with: [ spec includes: #(#'Magritte-GToolkit') ];
			package: #'Magritte-GToolkit' with: [ spec requires: #(#'Magritte-Model' #'Magritte-UI') ];
			package: #'Magritte-Merging-Bloc' with: [ spec requires: #(#'Magritte-Merging') ];
			package: #'Magritte-UI' with: [ spec requires: #(#'Magritte-Model') ].
		spec group: #'default' with: #(#'Magritte-GToolkit' #'Magritte-Merging-Bloc') ].