writing
writeScriptDefinition: definition
	stream
		cr;
		nextPutAll: definition script;
		nextPut: $!;
		cr