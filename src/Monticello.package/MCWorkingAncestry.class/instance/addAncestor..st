as yet unclassified
addAncestor: aNode
	"Add aNode, remove ancestors of it, preserve original order"
	| writeNode |
	writeNode := true.
	"Write aNode only once, replacing the first of its ancestors, or add last"
	ancestors := Array streamContents: [:newAncestors |
		self ancestors do: [:each |
			(aNode hasAncestor: each)
				ifTrue: [writeNode ifTrue: [newAncestors nextPut: aNode. writeNode := false]]
				ifFalse: [newAncestors nextPut: each]].
		writeNode ifTrue: [newAncestors nextPut: aNode. writeNode := false]].