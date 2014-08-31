rendering
renderLockingOn: html
	self isLocked ifTrue:[ 
		html tbsButton 
				bePrimary;
				class: 'pull-right';
				onClick: (html javascript callback:[self unlock]);
				with: [
					html span fontAwesome; fontAwesomeLockIcon.
					html html: ' '.
					html text: 'Ontgrendel' ] ]