user interface
representativeButtonWithColor: aColor inPanel: aPreferencesPanel
	| innerPanel |
	innerPanel := self horizontalPanel
		addMorphBack: (self blankSpaceOf: 10@0);
		addMorphBack: self newListMorph;
		yourself.
	^self verticalPanel
		layoutInset: 2;
		color: aColor;
		addMorphBack: (StringMorph contents: self preference name);
		addMorphBack: innerPanel;
		yourself.