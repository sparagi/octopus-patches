as yet unclassified
treeMorph: treeSymbol selection: selectionSymbol menu: menuSymbol keystroke: keystrokeSymbol
	| tree |
	tree := builder pluggableTreeSpec new.
	tree 
		model: tool;
		roots: (treeSymbol, 'TreeRoots') asSymbol;
		setSelected: (selectionSymbol, ':') asSymbol;
		getChildren: (treeSymbol,'TreeChildrenOf:') asSymbol;
		label: (treeSymbol,'TreeLabelOf:') asSymbol;
		frame: currentFrame.
	menuSymbol ifNotNil: [tree menu: menuSymbol].
	keystrokeSymbol ifNotNil: [tree keyPress: keystrokeSymbol].
	window children add: tree
