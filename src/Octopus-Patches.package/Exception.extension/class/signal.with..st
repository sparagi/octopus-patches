*Octopus-Patches
signal: signalerText with: parameter
	"Signal the occurrence of an exceptional condition, with signalerText and parameter."

	^(self new)
		tag: parameter;
		signal: signalerText