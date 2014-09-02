rendering
renderLockStateOn: html
	self isLocked ifTrue:[html span fontAwesome; fontAwesomeLockIcon]