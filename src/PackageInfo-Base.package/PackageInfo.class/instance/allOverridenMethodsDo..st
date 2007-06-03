enumerating
allOverridenMethodsDo: aBlock
	"search classes and meta classes"
	^ ProtoObject withAllSubclassesDo: [:class | 
		self overriddenMethodsInClass: class do: aBlock]
