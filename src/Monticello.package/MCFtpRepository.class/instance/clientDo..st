as yet unclassified
clientDo: aBlock
	| client |
	client _ FTPClient openOnHostNamed: host.
	client loginUser: user password: self password.
	directory isEmpty ifFalse: [client changeDirectoryTo: directory].
	^ [aBlock value: client] ensure: [client close]