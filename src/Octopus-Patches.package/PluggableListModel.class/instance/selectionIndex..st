accessing
selectionIndex: aNumber
	"Set which item is selected, by numeric index."

	selectionIndex := aNumber.
	self changed: #selectionIndex