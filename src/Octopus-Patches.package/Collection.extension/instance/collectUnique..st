*Octopus-Patches
collectUnique: aBlock 
	"Evaluate aBlock with each of the receiver's elements as the argument.  
	Collect the resulting values into a Set.  Answer the new Set."

	| set |
	set _ Set new.
	self do: [:each | | value |
		value _ aBlock value: each.
		value ifNotNil: [
			set add: value]].
	^ set