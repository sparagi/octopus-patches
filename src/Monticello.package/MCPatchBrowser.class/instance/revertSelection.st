as yet unclassified
revertSelection
	| loader |
	selection ifNotNil:
		[loader _ MCPackageLoader new.
		selection inverse applyTo: loader.
		loader loadWithName: self changeSetNameForInstall ]