accessing
host: aHost port: aPort username: aUsername
	| aProfile |
	aProfile := self new host: aHost port: aPort username: aUsername.
	self profiles add: aProfile.
	^aProfile