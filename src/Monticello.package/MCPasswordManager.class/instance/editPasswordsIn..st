editing
editPasswordsIn: pwdFile
	"Edit the passwords"
	| file data |
	file := FileStream readOnlyFileNamed: pwdFile.
	data := file contents.
	file close.
	UIManager default edit: data label: pwdFile accept:[:text|
		file := FileStream forceNewFileNamed: pwdFile.
		file nextPutAll: text asString.
		file close.
	].

