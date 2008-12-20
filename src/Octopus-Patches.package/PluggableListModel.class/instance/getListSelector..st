accessing
getListSelector: aSymbol
	"Set the selector I use to retrieve my list."
	
	getListSelector = aSymbol ifFalse: [
		self unregisterWithModel.
		getListSelector := aSymbol.
		self registerWithModel.
		self changed: #list]