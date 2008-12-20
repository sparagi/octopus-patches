event handling
update: aSymbol
	"Update myself."
	
	aSymbol = getListSelector ifTrue: [self changed: #list]