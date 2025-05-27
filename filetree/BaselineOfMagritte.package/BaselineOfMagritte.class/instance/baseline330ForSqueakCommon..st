baselines
baseline330ForSqueakCommon: spec

	spec for: #squeak do: [
		spec
			package: #'Magritte-OmniBrowser-Tools' with: [ spec requires: #(#'Magritte-Deprecated') ].
		spec
			group: #'SqueakTools' with: #(#'Magritte-OmniBrowser-Tools') ].

	spec for: #squeakCommon do: [
		spec
			package: #'Magritte-Bootstrap' with: [ spec requires: #(#'Magritte-Model') ];
			package: #'Magritte-Deprecated3dot7' with: [ spec requires: #(#'Magritte-Model' #'Magritte-Morph') ];
			package: #'Magritte-Merging' with: [ spec requires: #(#'Magritte-Model') ];
			package: #'Magritte-Model' with: [ spec includes: #(#'Magritte-Pharo-Model') ];
			package: #'Magritte-Money' with: [ spec requires: #(#'Magritte-Model') ];
			package: #'Magritte-Morph' with: [ spec requires: #(#'Magritte-Model') ];
			package: #'Magritte-Pharo-Model';
			package: #'Magritte-Pharo-Seaside' with: [ spec requires: #(#'Magritte-Seaside') ];
			package: #'Magritte-Pharo-Tools' with: [ spec requires: #(#'Magritte-Deprecated') ];
			package: #'Magritte-Seaside' with: [ spec includes: #(#'Magritte-Pharo-Seaside') ];
			package: #'Magritte-Tests-Model'.
		spec
			group: #'Tools' with: #(#'Magritte-Pharo-Tools');
			group: #'default' with: #(#'Magritte-Morph') ].

	spec for: #notGToolkit do: [ 
		spec 
			package: #'Magritte-Model' with: [ spec includes: #(#'Magritte-NotGToolkit') ];
			package: #'Magritte-NotGToolkit' ]