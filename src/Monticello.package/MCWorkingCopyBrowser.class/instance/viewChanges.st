actions
viewChanges
	| patch |
	'Finding changes' displayProgressAt: Sensor cursorPoint from: 0 to: 10 during:[:bar|
		self canSave ifTrue:[
		bar value: 1.
		patch _ workingCopy changesRelativeToRepository: self repository].
		patch isNil ifTrue: [^ self].
		bar value:3.
		patch isEmpty
			ifTrue: [ workingCopy modified: false.
				bar value: 10.
				self inform: 'No changes' ]
			ifFalse:
				[ workingCopy modified: true.
				bar value: 5.
				(MCPatchBrowser forPatch: patch)
					label: 'Patch Browser: ', workingCopy description;
					show]]