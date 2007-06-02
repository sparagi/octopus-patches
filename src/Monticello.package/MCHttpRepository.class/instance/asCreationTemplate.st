as yet unclassified
asCreationTemplate
	^self class creationTemplateLocation: location user: user password: (
		(MCPasswordManager default passwordAt: location user: user) ifNil:['']
	)