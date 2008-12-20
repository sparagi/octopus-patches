value
value
	"Answer my value for use by consumers outside the preference system."
	
	^value collect: [:i |
		(values at: i) value]