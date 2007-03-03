accessing
externalRequirements
	| unloaded providedByUnloaded |
	unloaded := self itemsWithMissingRequirements.
	providedByUnloaded := (unloaded gather: [:e | e provisions]) asSet.
	^ required keys reject: [:ea | ea = #everything or: [providedByUnloaded includes: ea]]