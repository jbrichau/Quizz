save restore
saveEvents
	FLSerializer serialize: AllEvents toFileNamed: 'quizz-', self incrementCounter asString,'.fl'.