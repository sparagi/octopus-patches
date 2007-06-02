as yet unclassified
password: passwordString
	| pwd |
	passwordString isEmpty ifTrue:[pwd := nil] ifFalse:[pwd := passwordString].
	MCPasswordManager default passwordAt: self squeakMapUrl user: user put: pwd.