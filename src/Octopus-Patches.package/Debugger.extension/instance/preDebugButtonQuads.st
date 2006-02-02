*Octopus-Patches
preDebugButtonQuads
	| quads |
	^ Preferences noDebugButton
		ifTrue: [#(#('Abandon' #abandon #black 'abandon this execution by closing this window') )]
		ifFalse: [quads := #(#('Proceed' #proceed #blue 'continue execution') #('Abandon' #abandon #black 'abandon this execution by closing this window') #('Debug' #debug #red 'bring up a debugger') ) asOrderedCollection.
			self interruptedContext selector == #doesNotUnderstand:
				ifTrue: [quads add: {'Create'. #createMethod. #magenta. 'create the missing method'}].
			quads]