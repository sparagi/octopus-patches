*Octopus-Patches
inPastTense
	"Answer the receiver with trailing d, unless something else is appropriate."

	^(self endsWith: 'ed')
		ifTrue: [self]
		ifFalse: [
			self last = $e
				ifTrue: [self, 'd']
				ifFalse: [self, 'ed']]
