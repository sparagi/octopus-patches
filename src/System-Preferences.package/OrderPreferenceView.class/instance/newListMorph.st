user interface
newListMorph
	"Configure and answer a new list morph."
	| listModel listMorph |
	
	listModel := PluggableListModel on: preference list: #preferenceValue.
	listModel setListSelector: #preferenceValue:.
	listMorph := PluggableListMorphPlus on: listModel list: #list selected: #selectionIndex changeSelected: #selectionIndex:.
	listMorph dragItemSelector: #at:.
	listMorph wantsDropSelector: #includes:.
	listMorph dropItemSelector: #move:to:.
	^listMorph