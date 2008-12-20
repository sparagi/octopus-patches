accessing
move: item to: newIndex
	"Move item, which is a member of my list, to the given new index."
	
	| list oldIndex | 
	newIndex = 0 ifTrue: [^self].
	list := self list copy.
	oldIndex := list indexOf: item.
	oldIndex = newIndex ifFalse: [
		"copied this logic from privateAddMorph:"
		oldIndex < newIndex ifTrue:[
			"moving dropped item to back"
			list replaceFrom: oldIndex to: newIndex-2 with: list startingAt: oldIndex+1.
			list at: newIndex-1 put: item.
		] ifFalse:[
			"moving dropped item to front"
			oldIndex-1 to: newIndex by: -1 do:[:i|
				list at: i+1 put: (list at: i)].
			list at: newIndex put: item.
		].
		self list: list].
	