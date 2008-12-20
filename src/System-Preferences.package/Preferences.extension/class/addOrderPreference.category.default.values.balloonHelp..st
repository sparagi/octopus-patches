*System-Preferences
addOrderPreference: aName category: categorySymbol default: aValue values: valueSpecs balloonHelp: helpString
	"Add or replace a preference as indicated.  Reuses the preexisting Preference object for this symbol, if there is one, so that UI artifacts that interact with it will remain valid."

	^self addOrderPreference: aName categories: {categorySymbol} default: aValue values: valueSpecs balloonHelp: helpString projectLocal: false changeInformee: nil changeSelector: nil viewRegistry: PreferenceViewRegistry ofOrderPreferences
