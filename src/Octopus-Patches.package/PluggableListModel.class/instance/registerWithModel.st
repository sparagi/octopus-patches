initialization
registerWithModel
	"Register actions to be triggered by changes in my model."

	(model notNil and: [getListSelector notNil]) ifTrue: [
		model addDependent: self.
		model when: getListSelector send: #changed: to: self with: #list]