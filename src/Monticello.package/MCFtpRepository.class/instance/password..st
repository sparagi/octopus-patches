as yet unclassified
password: passwordString
	| pwd |
	passwordString isEmpty ifTrue:[pwd := nil] ifFalse:[pwd := passwordString].
	MCPasswordManager default passwordAt: 'ftp://',host user: user put: pwd.
