Each of my instances, like ListModels, model a list which is being displayed to a human, including its current selection index.  Unlike a ListModel, an instance of me pulls its list from an external model.

My instances use the changed:/update: protocol as if they were ListModels.  However, to avoid performance problems, each uses the triggerEvent: protocol to register with its model.

Instance Variables
	listSelector:			message to send to my model to get the list
	model:				object that actually has my list
	selectionIndex:		index of current selection in the UI
