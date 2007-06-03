as yet unclassified
registerPackage: aString
	"for compatibility with old fileOuts"
	^ Smalltalk at: #FilePackageManager ifPresent: [:p | p registerPackage: aString]