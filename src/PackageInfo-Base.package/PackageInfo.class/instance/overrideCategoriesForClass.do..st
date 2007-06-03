enumerating
overrideCategoriesForClass: aClass do: aBlock
	^ aClass organization categories do: [:cat |
		(self isOverrideCategory: cat) ifTrue: [aBlock value: cat]]