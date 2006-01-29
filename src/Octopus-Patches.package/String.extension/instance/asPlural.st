*Octopus-Patches
asPlural
	"Answer the receiver with trailing s, unless something else is appropriate."

	| result |
	
	self last = $s ifTrue: [result _ self, 'es'].
	self last = $y ifTrue: [result _ (self copyFrom: 1 to: (self size - 1)), 'ies'].
	result ifNil: [result _ self, 's'].
		
	^result