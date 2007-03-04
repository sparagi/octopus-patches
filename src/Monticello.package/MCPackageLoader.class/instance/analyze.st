private
analyze
	| sorter |
	sorter := self sorterForItems: additions.
	sorter addProvision: #everything.
	additions := sorter orderedItems.
	requirements := sorter externalRequirements.
	unloadableDefinitions := sorter itemsWithMissingRequirements asSortedCollection.
	
	sorter := self sorterForItems: removals.
	removals := sorter orderedItems reversed.