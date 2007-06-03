enumerating
overriddenMethodsDo: aBlock
	^ self allOverridenMethodsDo: [:ea |
		(self isOverrideOfYourMethod: ea)
			ifTrue: [aBlock value: ea]]