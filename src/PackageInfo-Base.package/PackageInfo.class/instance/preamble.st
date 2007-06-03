preamble/postscript
preamble

	^ preamble ifNil: [preamble := StringHolder new contents: '"below, add code to be run before the loading of this package"'].
