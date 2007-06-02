morphic ui
pickRepositorySatisfying: aBlock
	| repos index |
	repos := MCRepositoryGroup default repositories select: aBlock.
	index _ (PopUpMenu labelArray: (repos collect: [:ea | ea description]))
				startUpWithCaption: 'Repository:'.
	^ index = 0 ifFalse: [repos at: index]