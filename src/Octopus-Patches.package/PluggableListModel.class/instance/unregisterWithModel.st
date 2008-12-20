initialization
unregisterWithModel
	"Unregister actions triggered by changes in my model."
	
	(model notNil and: [getListSelector notNil]) ifTrue: [
		model removeDependent: self.
		model removeActionsWithReceiver: self forEvent: getListSelector]