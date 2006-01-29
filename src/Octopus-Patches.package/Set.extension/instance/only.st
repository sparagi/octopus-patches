*Octopus-Patches
only
	"Answer my only element."
	^ self size = 1
		ifTrue: [self anyOne]
		ifFalse: [self error: 'I have more than one element.']