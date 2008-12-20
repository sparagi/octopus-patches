initialization
name: aName defaultValue: aValue values: valueDictionaryOrArray helpString: aString localToProject: projectBoolean categoryList: aList changeInformee: informee changeSelector:  aChangeSelector viewRegistry: aViewRegistry
	"Initialize the preference from the given values.  There is an extra tolerence here for the symbols #true, #false, and #nil, which are interpreted, when appropriate, as meaning true, false, and nil"

	values := valueDictionaryOrArray isDictionary 
		ifTrue: [valueDictionaryOrArray]
		ifFalse: [ | valueDictionary |
			valueDictionary := Dictionary new.
			valueDictionaryOrArray do: [:pv |
				valueDictionary at: pv symbol put: pv].
			valueDictionary].
	self name: aName defaultValue: aValue helpString: aString localToProject: projectBoolean categoryList: aList changeInformee: informee changeSelector:  aChangeSelector viewRegistry: aViewRegistry
