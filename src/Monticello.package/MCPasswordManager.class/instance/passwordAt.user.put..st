queries
passwordAt: location user: user put: password
	"Store the password under the given key"
	| file tokens pwd in out done sz pwdFile |
	(location indexOf: Character space) = 0 
		ifFalse:[^self error: 'Key must not contain spaces'].
	(user indexOf: Character space) = 0 
		ifFalse:[^self error: 'Key must not contain spaces'].
	password ifNotNil:[
		pwd := (Base64MimeConverter mimeEncode: password readStream) contents.
	].
	pwdFile := user,'.pwd'.
	file := [self directory readOnlyFileNamed: pwdFile] on: Error do:[:ex| ex return: nil].
	file ifNotNil:[
		[in := file contents readStream] ensure:[file close].
	] ifNil:[in := String new readStream].
	out := WriteStream on: (String new: 1000).

	done := pwd == nil. "if clearing passwords, we're done already"
	[in atEnd] whileFalse:[
		tokens := in nextLine findTokens: ' '.
		tokens size = 2 ifTrue:[
			(tokens first match: location) 
				ifTrue:[pwd ifNotNil:[out nextPutAll: location; space; nextPutAll: pwd; cr. done := true]]
				ifFalse:[out nextPutAll: tokens first; space; nextPutAll: tokens last; cr]]].
	done ifFalse:[out nextPutAll: location; space; nextPutAll: pwd; cr].

	file := [self directory forceNewFileNamed: pwdFile] on: Error do:[:ex| ex return: nil].
	file ifNil:[^nil].
	[file nextPutAll: out contents.
	sz := file size] ensure:[file close].
	sz = 0 ifTrue:[self directory deleteFileNamed: pwdFile ifAbsent:[]].
