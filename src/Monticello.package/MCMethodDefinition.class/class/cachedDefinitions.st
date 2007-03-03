as yet unclassified
cachedDefinitions
	Definitions ifNil: [Definitions := WeakIdentityKeyDictionary new.  WeakArray addWeakDependent: Definitions].
	^ Definitions