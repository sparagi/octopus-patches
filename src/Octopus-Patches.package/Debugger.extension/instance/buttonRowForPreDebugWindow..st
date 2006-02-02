*Octopus-Patches
buttonRowForPreDebugWindow: aDebugWindow
	| aRow aButton quads |
	aRow := AlignmentMorph newRow hResizing: #spaceFill; vResizing: #spaceFill.
	aRow layoutInset: 1; cellInset: 1.
	aRow beSticky.
	aRow addMorphBack: AlignmentMorph newVariableTransparentSpacer.
	quads := OrderedCollection withAll: self preDebugButtonQuads.
	quads do:
			[:quad |
				aButton := SimpleButtonMorph new target: aDebugWindow.
				aButton color: Color white; borderWidth: 1.
				aButton actionSelector: quad second.
				aButton label: quad first.
				aButton submorphs first color: (Color colorFrom: quad third).
				aButton setBalloonText: quad fourth.
				Preferences alternativeWindowLook 
					ifTrue:[aButton borderStyle: BorderStyle thinGray].
				aButton useSquareCorners.
				aRow addMorphBack: aButton.
				aRow addMorphBack: AlignmentMorph newVariableTransparentSpacer].
	^ aRow