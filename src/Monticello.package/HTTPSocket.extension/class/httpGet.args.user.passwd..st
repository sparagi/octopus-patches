*monticello
httpGet: url args: args user: user passwd: passwd
	| authorization result |
	authorization := (Base64MimeConverter mimeEncode: (user , ':' , passwd) readStream) contents.
	result := self 
		httpGet: url args: args accept: '*/*' 
		request: 'Authorization: Basic ' , authorization , CrLf.
	result isString ifFalse: [^result].

	authorization := self digestFor: result method: 'GET' url: url user: user password: passwd.
	authorization ifNil: [^result].
	^self 
		httpGet: url args: args accept: '*/*' 
		request: 'Authorization: Digest ' , authorization , CrLf.
