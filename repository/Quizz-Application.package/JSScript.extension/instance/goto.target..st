*Quizz-Application
goto: aUrl target: aTarget
	self add: (JSStream new
		nextPutAll: 'window.open(';
		javascript: aUrl;
		nextPut: $,;
		javascript: aTarget;
		nextPut: $))