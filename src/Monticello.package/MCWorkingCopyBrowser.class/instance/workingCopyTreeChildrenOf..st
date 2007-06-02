morphic ui
workingCopyTreeChildrenOf: aWorkingCopy
	| workingCopies |
	workingCopies := self unsortedWorkingCopies.
	^aWorkingCopy requiredPackages collect:[:each | 
			workingCopies detect: [:wc | wc package = each] ifNone: [nil]]
			thenSelect: [:x | x notNil].