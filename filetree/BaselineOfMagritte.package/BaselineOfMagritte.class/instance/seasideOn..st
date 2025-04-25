prerequisites
seasideOn: spec
	spec
		baseline: 'Seaside3'
			with: [ "note: we do not want to depend on Zinc, since this is not present in Squeak. Currently no adapter is loaded"
			spec
				repository: 'github://SeasideSt/Seaside:master/repository';
				loads: #('Core') ]