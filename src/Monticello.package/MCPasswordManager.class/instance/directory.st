accessing
directory
	"Answer the directory in which to find the passwords"
	^directory ifNil:[ExternalSettings assuredPreferenceDirectory]