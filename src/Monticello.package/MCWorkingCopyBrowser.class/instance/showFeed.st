actions
showFeed
	| parser xml text |
	parser := Smalltalk at: #XMLDOMParser
		ifAbsent: [^self inform: 'Yaxo not installed'].
	Cursor wait showWhile: [
		xml := self repository readStreamForFileNamed: 'feed.rss'
			do: [:stream | parser parseDocumentFrom: stream ]].
	xml ifNil: [^self inform: 'feed.rss not found'].
	text := Text streamContents: [:stream |
		xml tagsNamed: #item do: [:item |
			#(title bold author italic pubDate normal description normal) pairsDo: [:tag :attr |
				stream withAttribute: (TextEmphasis perform: attr) do: [
					item tagsNamed: tag do: [:element | 
						stream nextPutAll: (element contentString
							copyReplaceAll: '<br/>' with: String cr) ; space]].
				attr = #normal ifTrue: [stream cr]]]].
	UIManager default edit: text label: 'Feed: ', self repository description