*Octopus-Patches
isEmpty
	"Answer whether the receiver contains any elements."
	^ self size = 0 or: [self slowSize = 0]