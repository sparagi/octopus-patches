listing
allOverridenMethods
	"search classes and meta classes"
	^ Array streamContents: [:stream |
		self allOverridenMethodsDo: [:each | stream nextPut: each]]
