editing
editPasswords
	"Edit the passwords"
	(self directory fileNamesMatching: '*.pwd') do:[:fName|
		self editPasswordsIn: (self directory fullNameFor: fName).
	].