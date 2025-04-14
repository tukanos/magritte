comparing
hash
	^ self methodSelector hash
		bitXor: (self modelClass hash)