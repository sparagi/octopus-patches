instance creation
on: model list: listSelector
	"Answer a new instance of me, initialized with the given values."
	
	^self new
		model: model;
		getListSelector: listSelector;
		yourself
		