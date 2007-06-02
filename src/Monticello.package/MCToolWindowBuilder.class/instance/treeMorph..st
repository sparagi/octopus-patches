as yet unclassified
treeMorph: listSymbol
	^ self
		treeMorph: listSymbol
		selection: listSymbol
		menu: (listSymbol, 'TreeMenu:') asSymbol