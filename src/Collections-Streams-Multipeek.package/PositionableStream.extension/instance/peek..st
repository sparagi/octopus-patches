*Collections-Streams-Multipeek
peek: anInteger
	"Answer what would be returned if the message next: were sent to the 
	receiver. If the receiver is at the end, answer nil."

	| nextObjects |
	self atEnd ifTrue: [^nil].
	nextObjects := self next: anInteger.
	position := position - (nextObjects size).
	^nextObjects