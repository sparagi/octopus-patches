as yet unclassified
db
	Smalltalk at: #KKDatabase ifPresent: [:classKKDatabase |
	(connection isNil or: [connection isConnected not]) ifTrue: [
		connection _ classKKDatabase onHost:hostname port: port].
	].
	^ connection