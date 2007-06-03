enumerating
overriddenMethodsInClass: aClass do: aBlock
	^ self overrideCategoriesForClass: aClass do: [:cat |
		self methodsInCategory: cat ofClass: aClass do: aBlock]