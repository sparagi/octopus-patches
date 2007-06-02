queries
passwordAt: location user: user
	"Answer the password stored under the given key, or nil if none can be found"
	| file stream tokens pwdFile |
	(location indexOf: Character space) = 0 
		ifFalse:[^self error: 'Location must not contain spaces'].
	(user indexOf: Character space) = 0 
		ifFalse:[^self error: 'User name must not contain spaces'].
	pwdFile := user,'.pwd'.
	file := [self directory readOnlyFileNamed: pwdFile] on: Error do:[:ex| ex return: nil].
	file ifNil:[^nil].
	[stream := file contents readStream] ensure:[file close].
	[stream atEnd] whileFalse:[
		tokens := stream nextLine findTokens: ' '.
		(tokens size = 2 and:[tokens first match: location]) ifTrue:[
			^(Base64MimeConverter mimeDecode: tokens last as: String)
		].
	].
	^nil