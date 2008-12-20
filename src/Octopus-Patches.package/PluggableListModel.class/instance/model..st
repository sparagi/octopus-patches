accessing
model: anObject
	"Set my model."

	model = anObject ifFalse: [
		self unregisterWithModel.
		model := anObject.
		self registerWithModel.
		self changed: #list]