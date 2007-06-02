as yet unclassified
versionReaderForFileNamed: aString
	readerCache ifNil: [readerCache := Dictionary new].
	^ readerCache at: aString ifAbsent:
		[self resizeCache: readerCache.
		super versionReaderForFileNamed: aString do:
			[:r |
			"do not cache configuration files"
			('*.mcm' match: aString) ifTrue: [r] ifFalse: [
			r ifNotNil: [readerCache at: aString put: r]]]]
	