required
writeStreamForFileNamed: aString replace: ignoreBoolean do: aBlock
	| stream response data statusLine code |
	stream _ RWBinaryOrTextStream on: String new.
	aBlock value: stream.
	data _ stream contents.
	response _ HTTPSocket
					httpPut: data
					to: (self urlForFileNamed: aString)
					user: self user
					passwd: self password.
	statusLine _ response copyUpTo: Character cr.
	code := (statusLine findTokens: ' ') second asInteger.
	(#(200 201) includes: code)
			ifFalse: [self error: response].