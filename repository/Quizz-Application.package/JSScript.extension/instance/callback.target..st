*Quizz-Application
callback: aBlock target: aString
	self goto: (self renderContext actionUrl
		withField: (self renderContext callbacks store: (WAActionCallback on: aBlock)))
			target: aString