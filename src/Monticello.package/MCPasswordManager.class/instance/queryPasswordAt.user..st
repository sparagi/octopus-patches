queries
queryPasswordAt: location user: user
	"Answer the password for the given user/location. 
	If the password is absent, query the user if interactive."
	| pwd |
	"search for existing password"
	pwd := self passwordAt: location user: user.
	pwd ifNotNil:[^pwd].
	pwd := FillInTheBlank requestPassword: 'Password for "', user, '" at ', location.
	pwd isEmptyOrNil ifTrue:[^nil].
	(self confirm: 'Remember password for "', user, '" at ', location,'?') ifTrue:[
		self passwordAt: location user: user put: pwd.
	].
	^pwd